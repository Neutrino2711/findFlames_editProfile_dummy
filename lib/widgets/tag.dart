import 'package:flutter/material.dart';

class Tag extends StatelessWidget {
  const Tag({
    super.key,
    required this.image,
    required this.text,
  });

  final String image;
  final String text;

  Size _textSize(String text, TextStyle style, BuildContext context) {
    final textPainter = TextPainter(
        text: TextSpan(text: text, style: style),
        maxLines: 1,
        textScaleFactor: MediaQuery.of(context).textScaleFactor,
        textDirection: TextDirection.ltr)
      ..layout();
    return textPainter.size;
  }

  @override
  Widget build(BuildContext context) {
    Size size_ =
        _textSize(text, Theme.of(context).textTheme.titleSmall!, context);
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        padding: EdgeInsets.all(4),
        height: MediaQuery.sizeOf(context).height * 0.045,
        width: size_.width + MediaQuery.sizeOf(context).width * 0.1,
        decoration: BoxDecoration(
          border:
              Border.all(color: Theme.of(context).colorScheme.inversePrimary),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(image),
                ),
              ),
              height: 18,
              width: 18,
            ),
            Spacer(),
            Text(
              text,
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ],
        ),
      ),
    );
  }
}
