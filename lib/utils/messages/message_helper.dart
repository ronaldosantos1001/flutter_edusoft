import 'package:another_flushbar/flushbar.dart';
import 'package:flutter_edusoft/utils/messages/message_theme.dart';
import 'package:flutter/material.dart';

void showMessage({
  required BuildContext context,
  required String message,
  required MessageTheme theme,
  String title = '',
  Widget? button,
}) {
  Flushbar(
    title: title,
    messageText: Text(
      message,
      style: const TextStyle(fontSize: 14),
    ),
    margin: const EdgeInsets.all(8),
    borderRadius: BorderRadius.circular(8),
    backgroundColor: theme.backgroundColor,
    icon: theme.icon,
    mainButton: button,
    duration: const Duration(seconds: 5),
    leftBarIndicatorColor: theme.foregroundColor,
  ).show(context);
}

void showSuccess(BuildContext context, String message) {
  showMessage(
    context: context,
    message: message,
    theme: const MessageTheme.success(),
  );
}

void showInfo(BuildContext context, String message) {
  showMessage(
    context: context,
    message: message,
    theme: const MessageTheme.info(),
  );
}

void showError(BuildContext context, String message) {
  showMessage(
    context: context,
    message: message,
    theme: const MessageTheme.error(),
  );
}

void showRegular(BuildContext context, String message) {
  showMessage(
    context: context,
    message: message,
    theme: const MessageTheme.regular(),
  );
}
