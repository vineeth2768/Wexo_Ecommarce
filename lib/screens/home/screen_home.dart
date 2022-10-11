import 'package:flutter/material.dart';
import 'package:wexo_ecommarce/widgets/bottom_app_bar.dart';

import 'package:wexo_ecommarce/widgets/home_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      bottomNavigationBar: const CustomBottomBar(),
      body: Column(
        children: [],
      ),
    );
  }
}
