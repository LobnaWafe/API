import 'package:dio/dio.dart';
import 'package:happy_tech_mastering_api_with_flutter/core/api/api_consumer.dart';
import 'package:happy_tech_mastering_api_with_flutter/core/api/api_interceptors.dart';
import 'package:happy_tech_mastering_api_with_flutter/core/api/end_points.dart';
import 'package:happy_tech_mastering_api_with_flutter/core/errors/exceptions.dart';

class DioConsumer extends ApiConsumer {
  final Dio dio;

  DioConsumer({required this.dio}){
  dio.options.baseUrl=EndPoints.baseUrl;
  dio.interceptors.add(ApiInterceptors());
  dio.interceptors.add(LogInterceptor(
   request : true,
   requestHeader : true,
   requestBody : false,
   responseHeader : true,
   responseBody : false,
   error : true,
  ));
  }

  @override
  delete(String path,
      {dynamic data, Map<String, dynamic>? queryParameters, bool isFormData=false}) async {
    try {
      final response =
          await dio.delete(path, data:isFormData?FormData.fromMap(data): data, queryParameters: queryParameters);
      return response.data;
    } on DioException catch (e) {
      handelDioExceptions(e);
    }
  }

  @override
  get(String path,
      {Object? data, Map<String, dynamic>? queryParameters}) async {
    try {
      final response =
          await dio.get(path, data: data, queryParameters: queryParameters);
      return response.data;
    } on DioException catch (e) {
      handelDioExceptions(e);
    }
  }

  @override
  patch(String path,
      {dynamic data, Map<String, dynamic>? queryParameters,bool isFormData=false}) async {
    try {
      final response =
          await dio.patch(path, data:isFormData?FormData.fromMap(data): data, queryParameters: queryParameters);
      return response.data;
    } on DioException catch (e) {
      handelDioExceptions(e);
    }
  }

  @override
  post(String path,
      {dynamic data, Map<String, dynamic>? queryParameters,bool isFormData=false}) async {
    try {
      final response =
          await dio.post(path, data:isFormData?FormData.fromMap(data): data, queryParameters: queryParameters);
      return response.data;
    } on DioException catch (e) {
      handelDioExceptions(e);
    }
  }
}
