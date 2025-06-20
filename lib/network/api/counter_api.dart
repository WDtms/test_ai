import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:test_ai/network/model/counter_dto.dart';
import 'package:test_ai/network/model/counter_update_request_dto.dart';
import 'package:test_ai/network/model/counter_user_dto.dart';

part 'counter_api.g.dart';

@RestApi()
abstract class CounterApi {
  factory CounterApi(Dio dio) = _CounterApi;

  @GET('/counter')
  Future<CounterDto> fetchCounter();

  @POST('/counter')
  Future<CounterDto> updateCounter(@Body() CounterUpdateRequestDto dto);

  @GET('/counter/user')
  Future<CounterUserDto> fetchUser();
}