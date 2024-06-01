import 'package:flutter/material.dart';
import '../tile_system/tile_card.dart';

class GridViewWidget extends StatefulWidget {
  const GridViewWidget({super.key});

  @override
  _GridViewWidgetState createState() => _GridViewWidgetState();
}

class _GridViewWidgetState extends State<GridViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GridView.builder(
        itemCount: 3,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index){
          return const TileWidget();
        },
      )
    );
  }
}
