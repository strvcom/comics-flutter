import 'package:fimber/fimber.dart';
import 'package:http_interceptor/http_interceptor.dart';
import 'package:http_interceptor/interceptor_contract.dart';
import 'package:http_interceptor/models/request_data.dart';
import 'package:http_interceptor/models/response_data.dart';

class LoggingInterceptor implements InterceptorContract {
  final FimberLog logger = FimberLog("Network");

  @override
  Future<RequestData> interceptRequest({required RequestData data}) async {
    logger.d("REQUEST >>> [${getMethodText(data.method)}] ${data.baseUrl}");
    logger.d("REQUEST >>> Headers ${data.headers}");
    if (data.body.toString().isNotEmpty) {
      logger.d("REQUEST >>> Body: ${data.body}");
    }
    return data;
  }

  @override
  Future<ResponseData> interceptResponse({required ResponseData data}) async {
    logger.d("RESPONSE <<< [${getMethodText(data.method)}] ${data.url}");
    if (data.body.toString().isNotEmpty) {
      logger.d("RESPONSE <<< Body: ${data.body}");
    }
    return data;
  }

  String getMethodText(Method? data) => data.toString().replaceFirst("Method.", "");
}
