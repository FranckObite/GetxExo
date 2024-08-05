import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxexo/FecthAndDisplayApiData/commonmodule/app_color.dart';
import 'package:getxexo/FecthAndDisplayApiData/commonmodule/app_string.dart';
import 'package:getxexo/FecthAndDisplayApiData/producModule/controllers/product_controller.dart';

class ProductListView extends StatelessWidget {
  ProductListView({super.key});

  final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppString.productList),
      ),
      body: Obx(() {
        if (productController.isLoading.value) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return ListView.builder(
              itemCount: productController.productList.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 150,
                          height: 150,
                          margin: const EdgeInsets.fromLTRB(16, 8, 8, 8),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              productController.productList[index].imageLink,
                              width: 150,
                              height: 150,
                              fit: BoxFit.fill,
                              color: AppColor.purpleColor,
                              colorBlendMode: BlendMode.color,
                            ),
                          ),
                        ),
                        Flexible(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              productController.productList[index].name,
                              style: const TextStyle(fontSize: 18),
                            ),
                            Text(
                              productController.productList[index].brand,
                              style: const TextStyle(
                                  fontSize: 14, color: AppColor.grey),
                            ),
                            Text(
                              productController.productList[index].category,
                              style: const TextStyle(
                                  color: AppColor.grey, fontSize: 14),
                            )
                          ],
                        ))
                      ],
                    ),
                    Divider(
                      color: AppColor.grey200,
                    )
                  ],
                );
              });
        }
      }),
    );
  }
}
