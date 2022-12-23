import 'dart:ui';

import 'package:flutter/foundation.dart' show immutable, VoidCallback;
import 'package:flutter/material.dart' show TextStyle, Colors;
import 'package:instagram_clone_kamranhccp/views/components/rich_text/link_text.dart';

@immutable
class BaseText {
  final String text;
  final TextStyle? style;

  bool get isLinkedText => this is LinkText;

  const BaseText({
    required this.text,
    this.style,
  });

  factory BaseText.plain({
    required String text,
    TextStyle? style = const TextStyle(),
  }) =>
      BaseText(
        text: text,
        style: style,
      );

  factory BaseText.link({
    required String text,
    required VoidCallback onTapped,
    TextStyle? style = const TextStyle(
      color: Colors.blue,
      decoration: TextDecoration.underline,
    ),
  }) =>
      LinkText(
        text: text,
        onTapped: onTapped,
        style: style,
      );
}
