import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:service_test/person_response.dart';

part 'api.g.dart';

@RestApi(baseUrl: 'https://swapi.dev/api/')
abstract class MainApi {
  factory MainApi(Dio dio, {String baseUrl}) = _MainApi;

  @GET('people/{id}')
  Future<PersonResponse> getPerson(
    @Path() int id,
  );
}
