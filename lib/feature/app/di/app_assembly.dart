import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:surf_logger/surf_logger.dart';
import 'package:test_ai/core/di/assembly.dart';
import 'package:test_ai/core/logger/strategies/debug_log_strategy.dart';
import 'package:test_ai/feature/app/presentation/navigation/app_router.dart';
import 'package:test_ai/feature/counter/data/repository/counter_repository.dart';
import 'package:test_ai/feature/counter/domain/repository/i_counter_repository.dart';
import 'package:test_ai/network/api/counter_api.dart';
import 'package:logger/logger.dart' as native_logger;
import 'package:test_ai/network/app_dio_configurator.dart';

class AppAssembly extends Assembly {
  late final Registry<Dio> dioClient;

  late final Registry<ICounterRepository> counterRepository;

  late final Registry<CounterApi> counterApi;

  late final Registry<LogWriter> logger;

  late final Registry<AppRouter> appRouter;

  AppAssembly() {
    dioClient = reg<Dio>(
      () => AppDioConfigurator.create(
        url: 'https://www.google.com',
        interceptors: [
          DioCacheInterceptor(
            options: CacheOptions(
              store: MemCacheStore(),
              policy: CachePolicy.noCache,
            ),
          ),
        ],
      ),
    );

    counterApi = reg<CounterApi>(
      () => CounterApi(
        dioClient.get,
      ),
    );

    logger = reg<LogWriter>(
      () {
        final debugStrategy = DebugLogStrategy(
          native_logger.Logger(
            printer: native_logger.PrettyPrinter(methodCount: 0),
          ),
        );

        return Logger.withStrategies(
          {debugStrategy},
        );
      },
    );

    counterRepository = reg<ICounterRepository>(
      () {
        return CounterRepository(
          counterApi: counterApi.get,
          logWriter: logger.get,
        );
      },
    );

    appRouter = reg<AppRouter>(
      () {
        return AppRouter();
      },
      onDispose: (it) {
        it.dispose();
      },
    );
  }
}
