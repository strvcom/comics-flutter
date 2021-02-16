import 'dart:io';

import 'package:fimber/fimber.dart';
import 'package:http_interceptor/interceptor_contract.dart';
import 'package:http_interceptor/models/request_data.dart';
import 'package:http_interceptor/models/response_data.dart';
import 'package:strv_app_implemented/core/di/injection.dart';
import 'package:strv_app_implemented/core/utils/preferences.dart';

class HeaderInterceptor implements InterceptorContract {
  final Preferences prefs = getIt<Preferences>();

  @override
  Future<RequestData> interceptRequest({RequestData data}) async {
    try {
      data.headers[HttpHeaders.contentTypeHeader] = "application/json";
    } catch (e) {
      Fimber.e(e);
    }
    return data;
  }

  @override
  Future<ResponseData> interceptResponse({ResponseData data}) async => data;
}
