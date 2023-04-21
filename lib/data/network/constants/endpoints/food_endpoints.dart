import '../endpoints.dart';

class FoodEndpoints {
  FoodEndpoints._();

  // base url
  static const String baseUrl = Endpoints.baseUrl;

  // receiveTimeout
  static const int receiveTimeout = 15000;

  // connectTimeout
  static const int connectionTimeout = 30000;

  // booking endpoints
  static const String categories = "$baseUrl/categories.php";
  static const String meals = '$baseUrl/filter.php?c=%s';
}
