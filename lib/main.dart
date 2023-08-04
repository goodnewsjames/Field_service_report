import 'package:demoapp/home_page.dart';
import 'package:flutter/material.dart';

const kBackgroundColor = Color.fromARGB(255, 253, 156, 9);
var kColorScheme = ColorScheme.fromSeed(seedColor: kBackgroundColor);

void main() {
  runApp(const DemoApp());
}

class DemoApp extends StatelessWidget {
  const DemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}


// brightness: kColorScheme.brightness,
          // primary: kColorScheme.primary,
          // onPrimary: kColorScheme.onPrimary,
          // secondary: kColorScheme.secondary,
          // onSecondary: kColorScheme.onSecondary,
          // error: kColorScheme.error,
          // onError: kColorScheme.onError,
          // background: kColorScheme.background,
          // onBackground: kColorScheme.onBackground,
          // surface: kColorScheme.surface,
          // onSurface: kColorScheme.onSurface,
