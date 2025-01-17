import 'package:crafty_bay/src/screens/home/home/view/sub_sections/home_app_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      body: const Center(
        child: Text("Home Screen"),
      ),
    );
  }
}
