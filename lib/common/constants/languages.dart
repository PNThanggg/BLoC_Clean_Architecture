import '../../domain/entities/language.dart';
import 'language_constants.dart';

class Languages {
  Languages._();
  static List<Language> languages = [
    Language(code: 'en', value: LanguageConstants.english),
    Language(code: 'ar', value: LanguageConstants.arabic),
  ];
}
