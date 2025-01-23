import 'package:crafty_bay/src/screens/home/home/view/widgets/product_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class CategoryProducts extends StatelessWidget {
  const CategoryProducts({super.key, required this.categoryName});

  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(
              Icons.arrow_back_ios,
              size: 20,
            )),
        centerTitle: true,
        title: Text(categoryName),
      ),
      body: GridView.builder(
          padding: REdgeInsets.all(16),
          itemCount: 20,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.8,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10),
          itemBuilder: (context, index) {
            return ProductCard();
          }),
    );
  }
}
