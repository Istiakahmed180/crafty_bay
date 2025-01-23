import 'package:crafty_bay/src/screens/home/home/view/widgets/category_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
          return CategoryCard(icon: Icons.tv, title: "Shoe");
        },
      ),
    );
  }
}
