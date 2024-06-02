import 'package:flutter/material.dart';
import '../search/search_bar.dart';
import '../tile_system/grid_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static const routeName = "/home";

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      body: const Column(
        children: [
          SearchBarWidget(),
          Expanded(child: GridViewWidget()),
        ],
      ),
    );
  }
}