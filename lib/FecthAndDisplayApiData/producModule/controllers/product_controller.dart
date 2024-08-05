import 'package:get/get.dart';
import 'package:getxexo/FecthAndDisplayApiData/apiModule/api_service.dart';
import 'package:getxexo/FecthAndDisplayApiData/producModule/models/product_model.dart';

class ProductController extends GetxController {
  var isLoading = true.obs;
  var productList = <ProductModel>[].obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    try {
      isLoading(true);
      var products = await ApiService.fecthProducts();
      productList.assignAll(products);
    } catch (e) {
      print("Exception : $e");
    } finally {
      isLoading(false);
    }
  }
}
