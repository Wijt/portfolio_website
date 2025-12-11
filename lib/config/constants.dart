import 'package:wijt/models/language.dart';
import 'package:flutter_svg/svg.dart';

class Constants {
  static const PROFILE_LINKEDIN = 'https://www.linkedin.com/in/fkaya08/';
  static const PROFILE_FACEBOOK = 'https://www.facebook.com/8fkaya/';
  static const PROFILE_GITHUB = 'https://github.com/wijt';
  static const PROFILE_TWITTER = 'https://twitter.com/iamfurkannn';
  static const PROFILE_INSTAGRAM = 'https://www.instagram.com/frkn.ky_/';
  static Language tr = Language(
    flag: SvgPicture.asset("assets/flag/tr.svg"),
    title: "Hoş geldiniz.",
    caption: "Araştırmacı, geliştirici, \nyazılımcı.",
    darkMode: "Karanlık moda geç",
    lightMode: "Aydınlık moda geç",
    languageText: "Türkçe'ye geç",
    flutterText: "flutterla...",
  );
  static Language en = Language(
    flag: SvgPicture.asset("assets/flag/us.svg"),
    title: "Welcome.",
    caption: "Learner, developer, \ncoder.",
    darkMode: "Change to dark mode",
    lightMode: "Change to light mode",
    languageText: "Convert to English",
    flutterText: "with flutter...",
  );
  static Map<String, Language> languages = {"tr": tr, "en": en};
}
