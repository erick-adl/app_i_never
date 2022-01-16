enum PhraseLanguage { BR, EN, ES }

extension PhraseLanguageKey on PhraseLanguage {
  String get key {
    switch (this) {
      case PhraseLanguage.BR:
        return 'br_phrases';
      case PhraseLanguage.EN:
        return 'en_phrases';
      case PhraseLanguage.ES:
        return 'es_phrases';
    }
  }
  
}

extension PhraseLanguageSuggest on PhraseLanguage {
  String get keySuggest {
    switch (this) {
      case PhraseLanguage.BR:
        return 'br_suggest_phrases';
      case PhraseLanguage.EN:
        return 'en_suggest_phrases';
      case PhraseLanguage.ES:
        return 'es_suggest_phrases';
    }
  }
  
}