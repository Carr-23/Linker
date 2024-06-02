import 'package:flutter/material.dart';
import 'bookmark.dart';
import 'add_bookmark.dart';

class GridViewWidget extends StatefulWidget {
  const GridViewWidget({super.key});

  @override
  _GridViewWidgetState createState() => _GridViewWidgetState();
}

class _GridViewWidgetState extends State<GridViewWidget> {
  @override
  Widget build(BuildContext context) {
    
    double screenWidth = MediaQuery.of(context).size.width;
    int crossAxisCount = (screenWidth / 550).floor(); 

    return Padding(
      padding: const EdgeInsets.only(left: 300.0, right: 300.0, top: 150.0),
      child: GridView.builder(
        itemCount: 10,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          mainAxisSpacing: 30.0,
          crossAxisSpacing: 30.0,
          ),
        itemBuilder: (context, index){
          if (index == 0) {
            return const AddBookmarkWidget();
          }
          return const BookmarkWidget();
        },
      )
    );
  }
}
