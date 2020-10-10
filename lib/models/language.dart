import 'package:flag/flag.dart';
import 'package:flutter/widgets.dart';

class Language {
  Flag flag;
  String title;
  String caption;
  String flutterText;
  String darkMode;
  String lightMode;
  Language({this.flag, this.title, this.caption, this.darkMode, this.lightMode, this.flutterText}) {}
}
