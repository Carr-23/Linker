import 'dart:ui';

import 'package:flutter/material.dart';
import 'bookmark_settings.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';

class BookmarkWidget extends StatefulWidget {
  final bool isPrivate;
  const BookmarkWidget({super.key, required this.isPrivate});

  @override
  _BookmarkWidgetState createState() => _BookmarkWidgetState();
}

class _BookmarkWidgetState extends State<BookmarkWidget> {
  String title = "test";
  String thumbnailURL =
      "https://img.freepik.com/free-psd/beautiful-cat-portrait-isolated_23-2150186143.jpg";
  String url = "https://cats.com/";
  String domain = "test";
  List<String> tags = [];

  String? creator;
  String? publisher;

  bool isHover = false;

  void openNewBookmarkDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => BookmarkSettingsWidget(
        isNew: false,
        title: title,
        thumbnailURL: thumbnailURL,
        url: url,
        domain: domain,
        tags: tags,
        creator: creator,
        publisher: publisher,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        child: InkWell(
      onTap: () async {
        if (!widget.isPrivate & await canLaunchUrl(Uri.parse(url))) {
          await launchUrl(Uri.parse(url));
        } else {
          await Clipboard.setData(ClipboardData(text: url));
        }
      },
      onHover: (blur) {
        setState(() {
          isHover = blur;
        });
      },
      child: ClipRect(
        child: Container(
          height: 290,
          width: 300,
          margin: const EdgeInsets.all(5),
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Image.network(
                  thumbnailURL,
                  fit: BoxFit.fill,
                ),
              ),
              if (isHover)
                BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
                  child: Container(
                    color: Colors.transparent,
                  ),
                ),
              const SizedBox(height: 8), // Add some spacing
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Hello World',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                        onPressed: () {
                          openNewBookmarkDialog(context);
                        },
                        icon: const Icon(Icons.more_vert_outlined)),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
