import 'package:wijt/models/language.dart';
import 'package:wijt/config/assets.dart';

class Constants {
  static const PROFILE_LINKEDIN = 'https://www.linkedin.com/in/fkaya08/';
  static const PROFILE_FACEBOOK = 'https://www.facebook.com/8fkaya/';
  static const PROFILE_GITHUB = 'https://github.com/wijt';
  static const PROFILE_TWITTER = 'https://twitter.com/iamfurkannn';
  static const PROFILE_INSTAGRAM = 'https://www.instagram.com/frkn.ky_/';
  
  static const PORTFOLIO = 'https://portfolio.iamfurkan.com';
  static const RESUME = 'https://iamfurkan.com/resume.pdf';

  static Language tr = Language(
    flag: Assets.trFlag,
    title: "Hoş geldiniz.",
    caption: "Araştırmacı, geliştirici, \nyazılımcı.",
    darkMode: "Karanlık moda geç",
    lightMode: "Aydınlık moda geç",
    languageText: "Türkçe'ye geç",
    flutterText: "flutterla...",
    portfolio: "Portfolyo",
    resume: "Özgeçmiş",
  );
  static Language en = Language(
    flag: Assets.usFlag,
    title: "Welcome.",
    caption: "Learner, developer, \ncoder.",
    darkMode: "Change to dark mode",
    lightMode: "Change to light mode",
    languageText: "Switch to English",
    flutterText: "with flutter...",
    portfolio: "Portfolio",
    resume: "Resume",
  );
  static Map<String, Language> languages = {"tr": tr, "en": en};
}
