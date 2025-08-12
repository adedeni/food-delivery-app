import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SeeMoreText extends StatefulWidget {
  final String text;
  final int trimLength; // Number of characters before truncating
  final TextStyle? style;

  const SeeMoreText({
    super.key,
    required this.text,
    this.trimLength = 40,
    this.style,
  });

  @override
  State<SeeMoreText> createState() => _SeeMoreTextState();
}

class _SeeMoreTextState extends State<SeeMoreText> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final displayText = widget.text.length > widget.trimLength && !isExpanded
        ? '${widget.text.substring(0, widget.trimLength)}... '
        : '${widget.text} ';

    return RichText(
      text: TextSpan(
        style: widget.style ??
            const TextStyle(
              color: Colors.white,
              fontSize: 17,
            ),
        children: [
          TextSpan(text: displayText),
          if (widget.text.length > widget.trimLength)
            TextSpan(
              text: isExpanded ? 'See less' : 'See more',
              style: const TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  setState(() {
                    isExpanded = !isExpanded;
                  });
                },
            ),
        ],
      ),
    );
  }
}