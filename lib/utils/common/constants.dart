import 'package:flutter/material.dart';
import 'package:flutter_base/network/api_provider.dart';

import '../../main.dart';

// Use -> APIConstant.requestKeys.email
class APIConstant {
  static RequestKeys requestKeys = const RequestKeys();
  static ResponseKeys responseKeys = const ResponseKeys();
}

class RequestKeys {
  const RequestKeys();

  String get email => 'email';

  String get password => 'email';
}

class ResponseKeys {
  const ResponseKeys();

  String get data => 'data';

  String get status => 'status';
}

GlobalKey<NavigatorState> kNavigatorKey = GlobalKey<NavigatorState>();
ApiManager apiCall = sl<ApiManager>();

String? kUserToken;
