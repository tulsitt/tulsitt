import 'dart:convert';
import 'package:connectivity/connectivity.dart';
import 'package:flutter_base/commoncompant/alerts.dart';
import 'package:flutter_base/generated/json/base/json_convert_content.dart';
import 'package:flutter_base/model/error_model_entity.dart';
import 'package:flutter_base/network/server_error.dart';
import 'package:flutter_base/utils/common/constants.dart';
import 'package:flutter_base/utils/common/env.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/request/request.dart';
import 'base_model.dart';

class ApiManager extends GetConnect {
  static final ApiManager _singleton = ApiManager._internal();

  factory ApiManager() {
    return _singleton;
  }

  ApiManager._internal() {
    httpClient.baseUrl = env.baseUrl;
    httpClient.followRedirects = false;
    httpClient.timeout = Duration(seconds: 60);
    httpClient.addRequestModifier(addHeaders);
  }

  Future<Request<dynamic>> addHeaders(Request<dynamic?> request) async {
    request.headers['Authorization'] = 'Bearer $kUserToken';
    request.headers['Content-Type'] = 'application/json';
    request.headers['cache-control'] = 'no-cache';
    return request;
  }


  Future<BaseModel<T>> getApiCall<T>(
          {Map<String, dynamic>? query, String? url}) =>
      get(url!, query: query).parse();
}

extension ApiHelper<T> on Future<Response<T>> {
  Future<BaseModel<T>> parse<T>() async {
    Response response;
    try {
      var connectivityResult = await (Connectivity().checkConnectivity());
      if (connectivityResult != ConnectivityResult.mobile &&
          connectivityResult != ConnectivityResult.wifi) {
        return BaseModel()..setException(ApiError.withError(error: null));
      }
      response = await this;
      print("Request: ${response.request?.url}");
      print("Status Code: ${response.statusCode}");
      print(response.body);
      switch (response.statusCode) {
        case 200:
        case 300:
          {
            if (response.body != null) {
              if (response.body is String) {
                return BaseModel()
                  ..setData(
                      JsonConvert.fromJsonAsT<T>(json.decode(response.body)));
              } else {
                return BaseModel()
                  ..setData(JsonConvert.fromJsonAsT<T>(response.body));
              }
            } else {
              return BaseModel()
                ..setException(ApiError.withApiError("unauthorised".tr));
            }
          }
        case 400:
          return BaseModel()
            ..setException(ApiError.withApiError(response.body));
        case 401:

        case 422:
          {
            var message =
                JsonConvert.fromJsonAsT<ErrorModelEntity>(response.body);
            return BaseModel()
              ..setException(
                  ApiError.withApiError(message.error ?? "error_occurred".tr));
          }
        case 403:
          {
            if (response.body != null) {
              var message =
                  JsonConvert.fromJsonAsT<ErrorModelEntity>(response.body);
              return BaseModel()
                ..setException(
                    ApiError.withApiError(message.error ?? "unauthorised".tr));
            } else {
              return BaseModel()
                ..setException(ApiError.withApiError("unauthorised".tr));
            }
          }
        case 500:
        case 405:
          {
            return BaseModel()
              ..setException(ApiError.withApiError('"unauthorised".tr'),
                  errorCode: 405);
          }
      // case 500:
        default:
          return BaseModel()
            ..setException(ApiError.withApiError("error_occurred".tr));
      }
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseModel()..setException(ApiError.withError(error: error));
    }
  }
}

extension DisplayError<T> on Future<BaseModel<T>> {
  Future<T?> display() async {
    var data = await this;
    if (data.data != null)
      return data.data;
    else {
      showErrorSnackBar(data.getException);
    }
    return null;
  }
}

Future<bool> internetCheck() async {
  var connectivityResult = await (Connectivity().checkConnectivity());
  if (connectivityResult == ConnectivityResult.mobile) {
    return true;
  } else if (connectivityResult == ConnectivityResult.wifi) {
    return true;
  }
  return false;
}
