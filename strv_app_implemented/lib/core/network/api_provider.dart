import 'package:http/http.dart';
import 'package:http_interceptor/http_client_with_interceptor.dart';
import 'package:strv_app_implemented/core/network/interceptors/header_interceptor.dart';
import 'package:strv_app_implemented/core/network/interceptors/logging_interceptor.dart';

class ApiProvider {
  // LoggingInterceptor should be last so we can see what other interceptors changed before the requests get outputed.
  Client client = HttpClientWithInterceptor.build(interceptors: [HeaderInterceptor(), LoggingInterceptor()]);
}
