import 'package:flutter/material.dart';

import 'config/themes.dart';
import 'pages/main_page.dart';
import 'widgets/theme_inherited_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ThemeSwitcherWidget(
      initialDarkModeOn: true,
      child: WijtApp(),
    );
  }
}

class WijtApp extends StatelessWidget {
  const WijtApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Hoş geldiniz",
      theme: ThemeSwitcher.of(context).isDarkModeOn ? darkTheme(context) : lightTheme(context),
      home: MainPage(),
    );
  }
}
