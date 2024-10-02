import 'package:flutter/cupertino.dart';

class ContentColumn extends StatelessWidget {
  final String title;
  final String description;

  const ContentColumn({
    super.key,
    required this.title,
    required this.description,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(title),
                Text(description),
              ],
            ),
          );
  }
}