import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'commonmodule/app_color.dart';
import 'commonmodule/app_string.dart';
import 'views/product_list_view.dart';

class MainHere extends StatelessWidget {
  const MainHere({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppString.fetchApiData,
      theme: ThemeData(primarySwatch: AppColor.purpleColor),
      home:  ProductListView(),
    );
  }
}
