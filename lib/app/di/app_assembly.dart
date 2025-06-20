import 'package:dio/dio.dart';
import 'package:surf_logger/surf_logger.dart';
import 'package:test_ai/core/di/assembly.dart';
import 'package:test_ai/core/logger/strategies/debug_log_strategy.dart';
import 'package:test_ai/feature/counter/data/converter/counter_converter.dart';
import 'package:test_ai/feature/counter/data/converter/counter_user_converter.dart';
import 'package:test_ai/feature/counter/data/repository/counter_repository.dart';
import 'package:test_ai/feature/counter/domain/repository/i_counter_repository.dart';
import 'package:test_ai/network/api/counter_api.dart';
import 'package:logger/logger.dart' as native_logger;

class AppAssembly extends Assembly {
  late final Registry<Dio> dioClient;

  late final Registry<ICounterRepository> counterRepository;

  late final Registry<CounterApi> counterApi;

  late final Registry<LogWriter> logger;

  AppAssembly() {
    dioClient = reg<Dio>(
      () => Dio(),
    );

    counterApi = reg<CounterApi>(
      () => CounterApi(
        dioClient.get,
      ),
    );

    counterRepository = reg<ICounterRepository>(
      () {
        final counterConverter = CounterConverter();
        final counterUserConverter = CounterUserConverter();

        return CounterRepository(
          counterApi: counterApi.get,
          counterConverter: counterConverter,
          counterUserConverter: counterUserConverter,
        );
      },
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
  }
}
