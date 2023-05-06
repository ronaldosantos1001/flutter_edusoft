class NetworkSettings {
  static final Map<String, String> headers = {
    'Content-Type': 'application/json; charset=utf-8',
  };
  static const int connectTimeout = 15000;
  static const int receiveTimeout = 30000;

  // Dio Log
  static const bool logRequest = false;
  static const bool logRequestBody = false;
  static const bool logRequestHeader = false;
  static const bool logResponseBody = false;
  static const bool logResponseHeader = false;
  static const bool dioError = false;
  static void Function(Object) logPrint = print;
}
