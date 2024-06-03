import 'package:flutter/material.dart';

class BookmarkSettingsWidget extends StatelessWidget {
  final bool isNew;
  final String title;
  final String thumbnailURL;
  final String url;
  final String domain;
  final List<String> tags;
  final String? creator;
  final String? publisher;

  BookmarkSettingsWidget({
    super.key,
    required this.isNew,
    this.title = "",
    this.thumbnailURL = "",
    this.url = "",
    this.domain = "",
    this.tags = const [],
    this.creator,
    this.publisher,
  });

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
      title: isNew ? const Text("Add Bookmark") : const Text("Edit Bookmark"),
      content: SingleChildScrollView(
        child: ListBody(
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(
                hintText: "Title",
                labelText: isNew ? null : title,
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: thumbnailURLController,
              decoration: InputDecoration(
                hintText: "Thumbnail URL",
                labelText: isNew ? null : thumbnailURL,
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: urlController,
              decoration: InputDecoration(
                hintText: "URL",
                labelText: isNew ? null : url,
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: domainController,
              decoration: InputDecoration(
                hintText: "Domain",
                labelText: isNew ? null : domain,
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: tagsController,
              decoration: InputDecoration(
                hintText: "Tags",
                labelText: isNew ? null : tags.join(", "),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: creatorController,
              decoration: InputDecoration(
                hintText: "Creator",
                labelText: isNew ? null : creator,
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: publisherController,
              decoration: InputDecoration(
                hintText: "Publisher",
                labelText: isNew ? null : publisher,
              ),
            ),
            const SizedBox(height: 20),
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
          child: isNew ? const Text("Add") : const Text("Save"),
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
