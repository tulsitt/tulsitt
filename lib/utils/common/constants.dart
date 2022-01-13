import 'package:flutter/material.dart';
import 'package:flutter_base/network/api_provider.dart';
import 'package:intl/intl.dart';

import '../../main.dart';

class APIConstant {
  static RequestKeys requestKeys = const RequestKeys();
  static ResponseKeys responseKeys = const ResponseKeys();
  static String gameList = 'games';
  static String gameDetails = 'games/';
}

class RequestKeys {
  const RequestKeys();

  String get dates => 'dates';

  String get key => 'key';

  String get ordering => 'ordering';

  String get page => 'page';

  String get pageSize => 'page_size';

  String get platforms => 'platforms';

  String get platformsValue => '5';

  String get keyValue => '02ef6ba5d13444ee86bad607e8bce3f4';

  String get orderingValue => 'descending';

  String get pageSizeValue => '20';
}

class ResponseKeys {
  const ResponseKeys();

  String get data => 'data';

  String get status => 'status';
}

String getStartDate() {
  var now = DateTime.now();
  now = DateTime(now.year - 1, now.month, now.day);
  return DateFormat('yyyy-MM-dd').format(now).toString();
}

String getEndDate() {
  return DateFormat('yyyy-MM-dd').format(DateTime.now()).toString();
}

String dateFormat( String strDate) {
  var formatter = new DateFormat('yyyy-MM-dd'); //yyyy-MM-dd'T'HH:mm:ss.SSS'Z'
  var formatter2 = new DateFormat('dd MMM yyyy'); //dd MMM yyy
  String formatted = formatter2.format(formatter.parse(strDate));
  return formatted;
}

GlobalKey<NavigatorState> kNavigatorKey = GlobalKey<NavigatorState>();
ApiManager apiCall = sl<ApiManager>();
String defaultImage =
    'https://jenkinselite.com/wp-content/uploads/2018/11/no_media.png';

String? kUserToken;
