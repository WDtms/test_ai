# Comprehensive Architectural Guidelines

This document provides exhaustive guidelines for Flutter development in this project, designed for both human developers and AI agents. It covers complete architecture patterns, data flow, file structure, and practical examples using the counter feature.

## Table of Contents
1. [Project Architecture Overview](#project-architecture-overview)
2. [File Structure Guidelines](#file-structure-guidelines)
3. [State Management Rules](#state-management-rules)
4. [Data Flow Documentation](#data-flow-documentation)
5. [Entity Management](#entity-management)
6. [Repository Pattern](#repository-pattern)
7. [Dependency Injection](#dependency-injection)
8. [UI Architecture Pattern](#ui-architecture-pattern)
9. [Complete Counter Feature Example](#complete-counter-feature-example)
10. [Do This, Not That Examples](#do-this-not-that-examples)
11. [Best Practices for AI Agents](#best-practices-for-ai-agents)

---

## Project Architecture Overview

### Layer Separation
The project follows **Clean Architecture** principles with strict layer separation:

```
┌─────────────────────────────────────────┐
│             Presentation Layer          │
│  (Flow → ViewController → View)         │
├─────────────────────────────────────────┤
│             Domain Layer                │
│  (Entities, Repositories, Blocs)        │
├─────────────────────────────────────────┤
│              Data Layer                 │
│  (Repository Impl, Converters, APIs)    │
└─────────────────────────────────────────┘
```

### Core Principles
1. **Always extend from BlocWAction/CubitWAction** - Never use standard Bloc/Cubit
2. **Use Cubit by default** - Only use Bloc when you need event transformation
3. **Strict layer separation** - Domain never depends on data or presentation
4. **Interface segregation** - Use interfaces for all contracts
5. **Assembly pattern** - Custom dependency injection system

---

## File Structure Guidelines

### Mandatory Directory Structure
```
lib/
├── core/                           # Core functionality, reusable across features
│   ├── domain/                     # Core business logic
│   │   ├── bloc/                   # Base bloc/cubit classes
│   │   │   ├── bloc_w_action.dart
│   │   │   ├── cubit_w_action.dart
│   │   │   └── i_streamable_w_action.dart
│   │   └── entity/                 # Core entities
│   │       ├── result.dart         # Result<T> pattern
│   │       └── failure/            # Failure types
│   ├── data/                       # Core data functionality
│   │   └── repository/             # Base repository classes
│   ├── presentation/               # Core UI components
│   │   └── bloc/                   # UI bloc utilities
│   ├── di/                         # Dependency injection
│   └── logger/                     # Logging functionality
├── feature/                        # Feature modules
│   └── [feature_name]/             # Each feature is self-contained
│       ├── domain/                 # Business logic layer
│       │   ├── bloc/               # Feature blocs/cubits
│       │   │   ├── [feature]_bloc.dart
│       │   │   ├── [feature]_event.dart
│       │   │   ├── [feature]_state.dart
│       │   │   └── [feature]_action.dart
│       │   ├── entity/             # Domain entities
│       │   └── repository/         # Repository interfaces
│       ├── data/                   # Data access layer
│       │   ├── repository/         # Repository implementations
│       │   └── converter/          # DTO converters
│       ├── presentation/           # UI layer
│       │   └── [screen_name]/      # Screen components
│       │       ├── [screen]_screen_flow.dart
│       │       ├── [screen]_screen_view_controller.dart
│       │       └── [screen]_screen_view.dart
│       └── di/                     # Feature DI
├── network/                        # Network layer
│   ├── api/                        # API interfaces
│   └── model/                      # DTOs
├── uikit/                         # Reusable UI components
└── l10n/                          # Localization
```

### File Naming Conventions
- Use `snake_case` for all file names
- Suffix files with their purpose: `_bloc.dart`, `_cubit.dart`, `_repository.dart`
- Group related files using `part`/`part of` when appropriate
- Use descriptive names that indicate the layer: `counter_screen_view.dart`

---

## State Management Rules

### RULE 1: Always Use BlocWAction or CubitWAction

**✅ CORRECT:**
```dart
// Use CubitWAction for simple state management
final class CounterCubit extends CubitWAction<CounterState, CounterAction> {
  CounterCubit() : super(CounterState.initial());
}

// Use BlocWAction when you need event transformation
final class CounterBloc extends BlocWAction<CounterEvent, CounterState, CounterAction> {
  CounterBloc() : super(CounterState.initial()) {
    on<CounterEvent>(_onCounterEvent);
  }
}
```

**❌ INCORRECT:**
```dart
// Never use standard Bloc/Cubit classes
final class CounterCubit extends Cubit<CounterState> { // ❌ NO!
  CounterCubit() : super(CounterState.initial());
}
```

### RULE 2: When to Use Cubit vs Bloc

**Use CubitWAction (Default Choice):**
- Simple state changes
- Direct method calls
- No event transformation needed
- Straightforward business logic

**Use BlocWAction (Special Cases Only):**
- Need event transformation (`transform` method)
- Complex event handling with debouncing
- Stream manipulation required
- Advanced reactive patterns

### RULE 3: Action Pattern for Side Effects

**✅ CORRECT:**
```dart
Future<void> _tryToUpdateCounter() async {
  final result = await _repository.updateCounter(newValue);
  
  switch (result) {
    case ResultOk<CounterEntity>(data: final counter):
      emit(CounterState.idle(curValue: counter.value));
    case ResultFailed<CounterEntity>():
      // Use action for side effects (UI notifications, navigation, etc.)
      action(CounterAction.showErrorOnUpdating(
        reason: CounterUpdateFailedReason.somethingWentWrong
      ));
      emit(CounterState.updateFailed(curValue: oldValue));
  }
}
```

**❌ INCORRECT:**
```dart
Future<void> _tryToUpdateCounter() async {
  final result = await _repository.updateCounter(newValue);
  
  switch (result) {
    case ResultFailed<CounterEntity>():
      // ❌ Don't handle UI side effects in bloc
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error occurred'))
      );
  }
}
```

---

## Data Flow Documentation

### Complete Data Flow Pattern

```
UI Event → ViewController → Bloc/Cubit → Repository → API
    ↓           ↓              ↓           ↓         ↓
User taps → incrementCounter() → add(Event) → handle() → HTTP request
    ↑           ↑              ↑           ↑         ↑
UI Update ← StateBuilder ← emit(State) ← ResultOk ← API response
```

### Detailed Flow Steps

1. **User Interaction**: User taps button in UI
2. **ViewController**: Converts UI event to bloc event
3. **Bloc/Cubit**: Processes business logic
4. **Repository**: Handles data operations with error handling
5. **API**: Makes network requests
6. **Response**: Data flows back through same layers
7. **State Update**: UI rebuilds based on new state
8. **Side Effects**: Actions trigger UI side effects

### Counter Feature Flow Example

```dart
// 1. UI Event (User taps increment button)
onPressed: vc.incrementCounter

// 2. ViewController converts to bloc event
void incrementCounter() => _counterBloc.add(CounterEvent.increment());

// 3. Bloc processes event
Future<void> _onIncrement(CounterEvent event, Emitter<CounterState> emit) async {
  // Business logic validation
  final state = this.state;
  switch (state) {
    case CounterData(:final curValue, :final user):
      return _tryToUpdateCounter(
        emit: emit,
        oldValue: curValue,
        newValue: curValue + 1,
        user: user,
      );
  }
}

// 4. Repository handles data operation
FutureResult<CounterEntity> updateCounter(int value) => handle(() async {
  final counterDto = await _counterApi.updateCounter(
    CounterUpdateRequestDto(value: value),
  );
  return CounterConverter.convert(counterDto);
});

// 5. State update triggers UI rebuild
StateStreamableBuilder(
  state: vc.counterStateProvider,
  builder: (_, state) => switch (state) {
    CounterData() => _CounterSuccessBody(successState: state, vc: vc),
    // ... other states
  },
)
```

---

## Entity Management

### Entity Definition Rules

**✅ CORRECT Entity Structure:**
```dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'counter_entity.freezed.dart';

@freezed
abstract class CounterEntity with _$CounterEntity {
  const factory CounterEntity({
    required int value,
  }) = _CounterEntity;
}
```

### State Definition Rules

**✅ CORRECT State Structure:**
```dart
@freezed
sealed class CounterState with _$CounterState {
  const factory CounterState.initial() = CounterInitial;
  const factory CounterState.loading() = CounterLoading;
  const factory CounterState.idle({
    required int curValue,
    required CounterUserEntity user,
  }) = CounterData;
  const factory CounterState.updating({
    required int curValue,
    required CounterUserEntity user,
  }) = CounterUpdating;
  const factory CounterState.updateFailed({
    required int curValue,
    required CounterUserEntity user,
  }) = CounterUpdateFailed;
  const factory CounterState.failure() = CounterFailure;
}
```

### Action Definition Rules

**✅ CORRECT Action Structure:**
```dart
@freezed
sealed class CounterAction with _$CounterAction {
  const factory CounterAction.showErrorOnUpdating({
    required CounterUpdateFailedReason reason,
  }) = ShowErrorOnUpdating;
}

enum CounterUpdateFailedReason {
  somethingWentWrong,
}
```

---

## Repository Pattern

### Repository Interface

**✅ CORRECT Interface Definition:**
```dart
abstract interface class ICounterRepository {
  FutureResult<CounterEntity> getCounter();
  FutureResult<CounterEntity> updateCounter(int value);
  FutureResult<CounterUserEntity> fetchUser();
}
```

### Repository Implementation

**✅ CORRECT Implementation:**
```dart
final class CounterRepository extends Repository implements ICounterRepository {
  final CounterApi _counterApi;

  const CounterRepository({
    required CounterApi counterApi,
    required super.logWriter,
  }) : _counterApi = counterApi;

  @override
  FutureResult<CounterEntity> getCounter() => handle(() async {
    final counterDto = await _counterApi.fetchCounter();
    return CounterConverter.convert(counterDto);
  });

  @override
  FutureResult<CounterEntity> updateCounter(int value) => handle(() async {
    final counterDto = await _counterApi.updateCounter(
      CounterUpdateRequestDto(value: value),
    );
    return CounterConverter.convert(counterDto);
  });
}
```

### Repository Rules

1. **Always extend Repository base class** - Provides error handling
2. **Use handle() method** - Wraps operations with consistent error handling
3. **Return FutureResult<T>** - Never return plain Future<T>
4. **Use converters** - Transform DTOs to domain entities
5. **Inject dependencies** - Never create dependencies inside repository

---

## Dependency Injection

### Assembly Pattern

**✅ CORRECT Assembly Structure:**
```dart
class CounterAssembly extends Assembly {
  final BuildContext context;

  CounterAssembly({required this.context});

  late final counterRepository = reg<ICounterRepository>(() => CounterRepository(
    counterApi: context.read<NetworkAssembly>().counterApi.get,
    logWriter: context.read<CoreAssembly>().logWriter.get,
  ));

  late final counterBloc = reg<CounterBloc>(() => CounterBloc(
    counterRepository: counterRepository.get,
    logger: context.read<CoreAssembly>().logWriter.get,
  ));
}
```

### Assembly Usage Rules

1. **Use reg<T>() for registration** - Handles lazy initialization
2. **Access with .get** - Retrieves initialized dependencies
3. **Pass BuildContext for cross-assembly access** - Enables dependency sharing
4. **Follow naming convention** - Use camelCase for registry names

---

## UI Architecture Pattern

### Flow → ViewController → View Pattern

This project uses a three-layer UI architecture:

#### 1. Flow Layer (Route Management)
```dart
@RoutePage()
class CounterScreenFlow extends StatelessWidget implements AutoRouteWrapper {
  @override
  Widget wrappedRoute(BuildContext context) => AssemblyProvider(
    create: () => CounterAssembly(context: context),
    builder: (_) => this,
  );

  @override
  Widget build(BuildContext context) {
    return CounterScreenViewController();
  }
}
```

#### 2. ViewController Layer (Business Logic Bridge)
```dart
abstract interface class ICounterScreenViewController {
  StateStreamable<CounterState> get counterStateProvider;
  void incrementCounter();
  void decrementCounter();
  void tryLoadInfoAgain();
}

class CounterScreenViewController extends StatefulWidget {
  // Implements interface and handles bloc interactions
}
```

#### 3. View Layer (Pure UI)
```dart
class CounterScreenView extends StatelessWidget {
  const CounterScreenView({required this.vc, super.key});

  final ICounterScreenViewController vc;

  @override
  Widget build(BuildContext context) {
    return StateStreamableBuilder(
      state: vc.counterStateProvider,
      builder: (_, state) => switch (state) {
        CounterData() => _CounterSuccessBody(successState: state, vc: vc),
        CounterLoading() => FullScreenLoaderWidget(),
        CounterFailure() => FullScreenErrorWidget(onTryAgain: vc.tryLoadInfoAgain),
      },
    );
  }
}
```

### UI Pattern Rules

1. **Flow handles routing and DI setup**
2. **ViewController implements interface and bridges to bloc**
3. **View is pure UI with no business logic**
4. **Use StateStreamableBuilder for state-dependent UI**
5. **Use StateStreamableListener for action handling**

---

## Complete Counter Feature Example

Here's the complete counter feature implementation showing all architectural patterns:

### Domain Layer

**Entity:**
```dart
@freezed
abstract class CounterEntity with _$CounterEntity {
  const factory CounterEntity({required int value}) = _CounterEntity;
}
```

**Repository Interface:**
```dart
abstract interface class ICounterRepository {
  FutureResult<CounterEntity> getCounter();
  FutureResult<CounterEntity> updateCounter(int value);
  FutureResult<CounterUserEntity> fetchUser();
}
```

**Bloc:**
```dart
final class CounterBloc extends BlocWAction<CounterEvent, CounterState, CounterAction> {
  final ICounterRepository _counterRepository;
  final LogWriter _logger;

  CounterBloc({
    required ICounterRepository counterRepository,
    required LogWriter logger,
  }) : _counterRepository = counterRepository,
       _logger = logger,
       super(CounterState.initial()) {
    on<CounterEvent>(_onCounterEvent);
  }

  Future<void> _onCounterEvent(CounterEvent event, Emitter<CounterState> emit) async {
    switch (event) {
      case _CounterInitEvent():
        return _onInit(event, emit);
      case _CounterIncrementEvent():
        return _onIncrement(event, emit);
      case _CounterDecrementEvent():
        return _onDecrement(event, emit);
    }
  }
}
```

### Data Layer

**Repository Implementation:**
```dart
final class CounterRepository extends Repository implements ICounterRepository {
  final CounterApi _counterApi;

  const CounterRepository({
    required CounterApi counterApi,
    required super.logWriter,
  }) : _counterApi = counterApi;

  @override
  FutureResult<CounterEntity> updateCounter(int value) => handle(() async {
    final counterDto = await _counterApi.updateCounter(
      CounterUpdateRequestDto(value: value),
    );
    return CounterConverter.convert(counterDto);
  });
}
```

### Presentation Layer

**Flow:**
```dart
@RoutePage()
class CounterScreenFlow extends StatelessWidget implements AutoRouteWrapper {
  @override
  Widget wrappedRoute(BuildContext context) => AssemblyProvider(
    create: () => CounterAssembly(context: context),
    builder: (_) => this,
  );
}
```

**ViewController:**
```dart
class CounterScreenViewController extends StatefulWidget {
  @override
  Widget build(BuildContext context) {
    return StateStreamableListener(
      state: _counterBloc,
      actionListener: (_, action) {
        // Handle side effects
      },
      child: CounterScreenView(vc: this),
    );
  }
}
```

**View:**
```dart
class CounterScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StateStreamableBuilder(
      state: vc.counterStateProvider,
      builder: (_, state) => switch (state) {
        CounterData() => _CounterSuccessBody(successState: state, vc: vc),
        // ... other states
      },
    );
  }
}
```

---

## Do This, Not That Examples

### State Management

**✅ DO: Use BlocWAction/CubitWAction**
```dart
final class CounterCubit extends CubitWAction<CounterState, CounterAction> {
  void increment() {
    emit(state.copyWith(value: state.value + 1));
    action(CounterAction.showSuccess());
  }
}
```

**❌ DON'T: Use standard Bloc/Cubit**
```dart
final class CounterCubit extends Cubit<CounterState> { // ❌ NO!
  void increment() {
    emit(state.copyWith(value: state.value + 1));
  }
}
```

### Side Effects

**✅ DO: Use actions for side effects**
```dart
// In bloc
switch (result) {
  case ResultFailed():
    action(CounterAction.showError()); // ✅ Emit action
    emit(CounterState.failed());
}

// In UI
StateStreamableListener(
  actionListener: (_, action) {
    switch (action) {
      case ShowError():
        ScaffoldMessenger.of(context).showSnackBar(...);
    }
  },
)
```

**❌ DON'T: Handle UI in bloc**
```dart
// In bloc
switch (result) {
  case ResultFailed():
    ScaffoldMessenger.of(context).showSnackBar(...); // ❌ NO!
    emit(CounterState.failed());
}
```

### Repository Pattern

**✅ DO: Use Result pattern and handle()**
```dart
@override
FutureResult<CounterEntity> getCounter() => handle(() async {
  final dto = await _api.fetchCounter();
  return CounterConverter.convert(dto);
});
```

**❌ DON'T: Return plain Future**
```dart
@override
Future<CounterEntity> getCounter() async { // ❌ NO!
  return await _api.fetchCounter();
}
```

### UI Architecture

**✅ DO: Use Flow → ViewController → View**
```dart
// Flow
class CounterScreenFlow extends StatelessWidget implements AutoRouteWrapper {
  @override
  Widget wrappedRoute(BuildContext context) => AssemblyProvider(
    create: () => CounterAssembly(context: context),
    builder: (_) => this,
  );
}

// ViewController
class CounterScreenViewController extends StatefulWidget implements ICounterScreenViewController {
  // Bridge between UI and bloc
}

// View
class CounterScreenView extends StatelessWidget {
  final ICounterScreenViewController vc;
  // Pure UI rendering
}
```

**❌ DON'T: Mix concerns in single widget**
```dart
class CounterScreen extends StatefulWidget { // ❌ NO!
  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<CounterBloc>(context);
    return BlocBuilder<CounterBloc, CounterState>(
      // Mixed routing, DI, business logic, and UI
    );
  }
}
```

---

## Best Practices for AI Agents

### Code Generation Rules

1. **Always start with interfaces** - Define contracts before implementation
2. **Follow naming conventions** - Use established patterns consistently
3. **Use pattern matching** - Prefer switch expressions over if-else chains
4. **Implement complete features** - Don't leave TODOs unless specified
5. **Follow layer separation** - Never cross architectural boundaries

### File Creation Order

1. Create domain entities first
2. Define repository interfaces
3. Implement bloc/cubit with states, events, actions
4. Create repository implementations
5. Build UI following Flow → ViewController → View pattern
6. Set up dependency injection

### Error Prevention

1. **Never use standard Bloc/Cubit classes**
2. **Always implement interfaces**
3. **Use handle() in repositories**
4. **Emit actions for side effects**
5. **Follow strict file structure**

### Code Quality Checks

Before submitting code, verify:
- [ ] All blocs/cubits extend BlocWAction/CubitWAction
- [ ] Repository methods return FutureResult<T>
- [ ] UI follows Flow → ViewController → View pattern
- [ ] Actions are used for side effects
- [ ] Entities use freezed
- [ ] Proper error handling is implemented

### Testing Approach

1. **Test blocs/cubits in isolation**
2. **Mock all dependencies**
3. **Test both success and failure paths**
4. **Verify action emissions**
5. **Test state transitions**

---

## Summary

This architecture ensures:
- **Clear separation of concerns** across all layers
- **Consistent error handling** with Result pattern
- **Testable code** through dependency injection and interfaces
- **Maintainable UI** with proper separation of presentation logic
- **Side effect management** through action streams
- **Type safety** with sealed classes and pattern matching

Follow these guidelines strictly to maintain code quality and architectural consistency throughout the project.