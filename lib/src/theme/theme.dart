import 'package:flutter/material.dart';

final theme = ThemeData(
  primaryColor: Colors.blue,
  iconTheme: const IconThemeData(color: Colors.blue),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(
      fontWeight: FontWeight.bold,
    ),
  ),
  pageTransitionsTheme: const PageTransitionsTheme(builders: {
    TargetPlatform.android: CupertinoPageTransitionsBuilder(),
  }),
);
