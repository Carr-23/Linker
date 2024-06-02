import 'package:flutter/material.dart';

class BookmarkSettingsWidget extends StatelessWidget {
  final bool isNew;

  BookmarkSettingsWidget(bool bool, {super.key, required this.isNew});

  // Initialize the TextEditingControllers
  final TextEditingController titleController = TextEditingController();
  final TextEditingController thumbnailURLController = TextEditingController();
  final TextEditingController urlController = TextEditingController();
  final TextEditingController domainController = TextEditingController();
  final TextEditingController tagsController = TextEditingController();
  final TextEditingController creatorController = TextEditingController();
  final TextEditingController publisherController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: isNew == true ? const Text("Add Bookmark") : const Text("Edit Bookmark"),
      content: SingleChildScrollView(
        child: ListBody(
          children: [
            TextField(
              controller: titleController,
              decoration: const InputDecoration(hintText: "Title"),
            ),
            TextField(
              controller: thumbnailURLController,
              decoration: const InputDecoration(hintText: "Thumbnail URL"),
            ),
            TextField(
              controller: urlController,
              decoration: const InputDecoration(hintText: "URL"),
            ),
            TextField(
              controller: domainController,
              decoration: const InputDecoration(hintText: "Domain"),
            ),
            TextField(
              controller: tagsController,
              decoration: const InputDecoration(hintText: "Tags"),
            ),
            TextField(
              controller: creatorController,
              decoration: const InputDecoration(hintText: "Creator"),
            ),
            TextField(
              controller: publisherController,
              decoration: const InputDecoration(hintText: "Publisher"),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          child: const Text("Cancel"),
          onPressed: () {
            Navigator.of(context).pop();
            titleController.clear();
            thumbnailURLController.clear();
            urlController.clear();
            domainController.clear();
            tagsController.clear();
            creatorController.clear();
            publisherController.clear();
          },
        ),
        TextButton(
          child: isNew == true ? const Text("Add") : const Text("Save"),
          onPressed: () {
            Navigator.of(context).pop();
            titleController.clear();
            thumbnailURLController.clear();
            urlController.clear();
            domainController.clear();
            tagsController.clear();
            creatorController.clear();
            publisherController.clear();
          },
        ),
      ],
    );
  }
}
