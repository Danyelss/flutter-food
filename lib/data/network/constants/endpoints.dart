class Endpoints {
  Endpoints._();

  //hostname
  static const String hostname = "www.themealdb.com";

  // base url
  static const String baseUrl = "https://$hostname/api/json/v1/1";

  // receiveTimeout
  static const int receiveTimeout = 15000;

  // connectTimeout
  static const int connectionTimeout = 30000;
}
