import 'package:crafty_bay/src/common/controller/navigation_cmn/navigation_cmn_controller.dart';
import 'package:crafty_bay/src/screens/home/home/view/widgets/category_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (_, __) {
        Get.find<NavigationCmnController>().moveToHome();
      },
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () => Get.find<NavigationCmnController>().moveToHome(),
              icon: Icon(
                Icons.arrow_back_ios,
                size: 20,
              )),
          centerTitle: true,
          title: const Text("Categories"),
        ),
        body: GridView.builder(
          padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 6.w),
          physics: const BouncingScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            childAspectRatio: 0.8,
          ),
          itemCount: 20,
          itemBuilder: (context, index) {
            return CategoryCard(icon: Icons.tv, title: "Computer");
          },
        ),
      ),
    );
  }
}
