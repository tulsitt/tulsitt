import 'package:flutter_base/network/server_error.dart';

class BaseModel<T> {
  ApiError? _error;
  T? data;

  setException(ApiError error, {int? errorCode}) {
    _error = error;
  }

  setData(T data) {
    this.data = data;
  }

  get getException {
    return _error?.getErrorMessage();
  }
}
