import 'package:flutter/material.dart';
import 'package:wijt/config/assets.dart';
import 'package:wijt/config/constants.dart';
import 'package:wijt/widgets/theme_inherited_widget.dart';

// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedLang = "tr";

  @override
  Widget build(BuildContext context) {
    SystemChrome.setApplicationSwitcherDescription(ApplicationSwitcherDescription(
      label: Constants.languages[selectedLang].title,
      primaryColor: Theme.of(context).primaryColor.value,
    ));

    final ButtonStyle flatButtonStyle = ButtonStyle(
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
        EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      ),
      backgroundColor: MaterialStateProperty.resolveWith(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.hovered)) if (ThemeSwitcher.of(context).isDarkModeOn)
            return Colors.indigo[900];
          else
            return Colors.black12;
          return Colors.transparent;
        },
      ),
      foregroundColor: MaterialStateProperty.all<Color>(ThemeSwitcher.of(context).isDarkModeOn ? Colors.white : Colors.black),
      overlayColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.pressed)) return ThemeSwitcher.of(context).isDarkModeOn ? Colors.black : Colors.white;
          return null;
        },
      ),
    );

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 0,
                  right: 0,
                  child: IconButton(
                    tooltip: ThemeSwitcher.of(context).isDarkModeOn ? Constants.languages[selectedLang].lightMode : Constants.languages[selectedLang].darkMode,
                    icon: ThemeSwitcher.of(context).isDarkModeOn ? new Image.asset((Assets.sun), height: 25) : new Image.asset(Assets.moon, height: 25),
                    onPressed: () => ThemeSwitcher.of(context).switchDarkMode(),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  child: IconButton(
                    icon: Constants.languages[selectedLang == "tr" ? "en" : "tr"].flag,
                    tooltip: selectedLang == "tr" ? Constants.languages["en"].languageText : Constants.languages["tr"].languageText,
                    onPressed: () => setState(() {
                      selectedLang = selectedLang == "tr" ? "en" : "tr";
                    }),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(Constants.languages[selectedLang].flutterText),
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 100,
                    backgroundImage: Image.asset(Assets.avatar).image,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Furkan Kaya',
                    textScaleFactor: 4,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    Constants.languages[selectedLang].caption,
                    style: Theme.of(context).textTheme.caption,
                    textScaleFactor: 2,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      TextButton.icon(
                        style: flatButtonStyle,
                        icon: SizedBox(width: 20, height: 20, child: Image.asset(Assets.github)),
                        label: Text('Github'),
                        onPressed: () => html.window.open(Constants.PROFILE_GITHUB, 'wijt'),
                      ),
                      TextButton.icon(
                        style: flatButtonStyle,
                        icon: SizedBox(width: 20, height: 20, child: Image.asset(Assets.linkedin)),
                        label: Text('Linkedin'),
                        onPressed: () => html.window.open(Constants.PROFILE_LINKEDIN, 'wijt'),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      TextButton.icon(
                        style: flatButtonStyle,
                        icon: SizedBox(width: 20, height: 20, child: Image.asset(Assets.twitter)),
                        label: Text('Twitter'),
                        onPressed: () => html.window.open(Constants.PROFILE_TWITTER, 'wijt'),
                      ),
                      TextButton.icon(
                        style: flatButtonStyle,
                        icon: SizedBox(width: 26, height: 26, child: Image.asset(Assets.instagram)),
                        label: Text('Instagram'),
                        onPressed: () => html.window.open(Constants.PROFILE_INSTAGRAM, 'wijt'),
                      ),
                      TextButton.icon(
                        style: flatButtonStyle,
                        icon: SizedBox(width: 20, height: 20, child: Image.asset(Assets.facebook)),
                        label: Text('Facebook'),
                        onPressed: () => html.window.open(Constants.PROFILE_FACEBOOK, 'wijt'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
