import 'package:Wijt/models/language.dart';
import 'package:flag/flag.dart';

class Constants {
  static const PROFILE_LINKEDIN = 'https://www.linkedin.com/in/fkaya08/';
  static const PROFILE_FACEBOOK = 'https://www.facebook.com/8fkaya/';
  static const PROFILE_GITHUB = 'https://github.com/Wijt';
  static const PROFILE_TWITTER = 'https://twitter.com/iamfurkannn';
  static const PROFILE_INSTAGRAM = 'https://www.instagram.com/iamfurkank_/';
  static Language tr = Language(
    flag: Flag("tr"),
    title: "Hoş geldiniz.",
    caption: "Araştırmacı, geliştirici, \nyazılımcı.",
    darkMode: "Karanlık moda geç",
    lightMode: "Aydınlık moda geç",
    flutterText: "💙 flutterla...",
  );
  static Language en = Language(
    flag: Flag("US"),
    title: "Welcome.",
    caption: "Learner, developer, \ncoder.",
    darkMode: "open dark mode",
    lightMode: "open light mode",
    flutterText: "💙 with flutter...",
  );
  static Map<String, Language> languages = {"tr": tr, "en": en};
}
