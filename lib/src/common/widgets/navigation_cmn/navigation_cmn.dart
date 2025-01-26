import 'package:crafty_bay/src/common/controller/navigation_cmn/navigation_cmn_controller.dart';
import 'package:crafty_bay/src/screens/home/cart/view/cart_screen.dart';
import 'package:crafty_bay/src/screens/home/categories/view/categories_screen.dart';
import 'package:crafty_bay/src/screens/home/home/view/ui/home_screen.dart';
import 'package:crafty_bay/src/screens/home/wish/view/wish_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationCmn extends StatelessWidget {
  const NavigationCmn({super.key});

  @override
  Widget build(BuildContext context) {
    final NavigationCmnController navigationCmnController =
        Get.put(NavigationCmnController());

    final List<Widget> screens = [
      HomeScreen(),
      CategoriesScreen(),
      CartScreen(),
      WishScreen()
    ];

    return Obx(
      () => Scaffold(
        body: screens[navigationCmnController.selectedIndex],
        bottomNavigationBar: NavigationBar(
          selectedIndex: navigationCmnController.selectedIndex,
          onDestinationSelected: navigationCmnController.changeIndex,
          destinations: const [
            NavigationDestination(
                icon: Icon(Icons.home_outlined), label: "Home"),
            NavigationDestination(
                icon: Icon(Icons.widgets_outlined), label: "Categories"),
            NavigationDestination(
                icon: Icon(Icons.add_shopping_cart_outlined), label: "Cart"),
            NavigationDestination(
                icon: Icon(Icons.card_giftcard_outlined), label: "Wish"),
          ],
        ),
      ),
    );
  }
}
