import 'package:food_app/data/network/constants/endpoints/food_endpoints.dart';
import 'package:food_app/data/network/dio_client.dart';
import 'package:food_app/models/category.dart';
import 'package:food_app/models/meal.dart';

class FoodApi {
  final DioClient _dioClient;

  FoodApi(this._dioClient);

  Future<List<Category>> getCategories() async {
    try {
      final res = await _dioClient.get(FoodEndpoints.categories);

      // process res

      return [];
      // return Category.fromJson(res['categories']);
    } catch (e) {
      rethrow;
    }
  }

  Future<List<Meal>> getMeals() async {
    try {
      final res = await _dioClient.get(FoodEndpoints.categories);
      return [];
      // return Meal.fromJson(res['meals']);
    } catch (e) {
      rethrow;
    }
  }
}
