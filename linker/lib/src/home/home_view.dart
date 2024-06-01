import 'package:flutter/material.dart';
import '../search/search_bar.dart';
import '../tile_system/grid_view.dart';
import '../tile_system/tile_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static const routeName = "/home";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          SearchBarWidget(),
          TileWidget(),
        ],
      ),
    );
  }
}