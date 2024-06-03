import 'package:flutter/material.dart';
import 'bookmark_settings.dart';

class AddBookmarkWidget extends StatelessWidget {
  const AddBookmarkWidget({super.key});

  void openNewBookmarkDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => BookmarkSettingsWidget(isNew: true)
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
      onTap: () {
        openNewBookmarkDialog(context);
      },
      child: Container(
        height: 290,
        width: 300,
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(child: Icon(Icons.add)),
          ],
        ),
      ),
    ));
  }
}