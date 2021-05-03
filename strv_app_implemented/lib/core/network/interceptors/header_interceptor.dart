import 'dart:io';

import 'package:fimber/fimber.dart';
import 'package:http_interceptor/interceptor_contract.dart';
import 'package:http_interceptor/models/request_data.dart';
import 'package:http_interceptor/models/response_data.dart';

class HeaderInterceptor implements InterceptorContract {
  @override
  Future<RequestData> interceptRequest({required RequestData data}) async {
    try {
      data.headers[HttpHeaders.contentTypeHeader] = "application/json";
    } catch (e) {
      Fimber.e(e.toString());
    }
    return data;
  }

  @override
  Future<ResponseData> interceptResponse({required ResponseData data}) async => data;
}
