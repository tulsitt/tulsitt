  import 'dart:io';
import 'package:get/get.dart';

class ApiError implements Exception {

  String _errorMessage = "";

  ApiError.withError({dynamic? error}) {
    _handleError(error);
  }
  
  ApiError.withApiError(String error) {
    _errorMessage = error;
  }

  getErrorMessage() {
    return _errorMessage;
  }

  _handleError(Exception? error) {
    if (error is HttpException) {
      _errorMessage = "unexpected_error".tr;
    } else if (error is SocketException) {
      _errorMessage = "unexpected_error".tr;
    } else if (error is FormatException) {
      _errorMessage = "unexpected_error".tr;
    } else{
      _errorMessage = "wifi_message".tr;
    }
    return _errorMessage;
  }
}
