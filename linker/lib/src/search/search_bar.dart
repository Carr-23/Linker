import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: SearchBar(
            leading: Icon(Icons.search),
          ),
        ),
      );
  }
}
