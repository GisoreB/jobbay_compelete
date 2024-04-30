import 'package:jobbay/APIs/category_api.dart';
import 'package:jobbay/models/category/category_dropdown.dart';
import 'package:jobbay/response/categoryResponse/get_category_with_count_response.dart';

class CategoryRepository {
  Future<CategoryWithCountResponse?> getAllCategory() async {
    return await CategoryAPI().getAllCategories();
  }

  Future<List<DropdownCategory?>> getCategoriesDropdown() async {
    return await CategoryAPI().getCategoriesDropdown();
  }
}
