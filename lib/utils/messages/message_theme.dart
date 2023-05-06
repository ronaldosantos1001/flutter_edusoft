import 'package:flutter/material.dart';

class MessageTheme {
  final Widget? icon;
  final Color backgroundColor;
  final Color foregroundColor;

  const MessageTheme({
    this.icon,
    required this.backgroundColor,
    required this.foregroundColor,
  });

  const MessageTheme.regular()
      : icon = null,
        backgroundColor = const Color.fromRGBO(40, 40, 40, 1),
        foregroundColor = const Color(0xFFFAFAFA);

  const MessageTheme.success()
      : icon = const Icon(Icons.check, size: 24, color: Colors.green),
        backgroundColor = const Color.fromRGBO(40, 40, 40, 1),
        foregroundColor = Colors.green;

  const MessageTheme.error()
      : icon = const Icon(Icons.close, size: 24, color: Color.fromARGB(255, 150, 14, 14)),
        backgroundColor = const Color.fromRGBO(40, 40, 40, 1),
        foregroundColor = const Color.fromARGB(255, 150, 14, 14);

  const MessageTheme.info()
      : icon = const Icon(Icons.check, size: 24),
        backgroundColor = const Color.fromRGBO(40, 40, 40, 1),
        foregroundColor = const Color(0xFFFAFAFA);
}
