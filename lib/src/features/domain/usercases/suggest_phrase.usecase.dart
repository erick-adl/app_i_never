import 'package:app_i_never/src/features/domain/entities/phrase.entity.dart';
import 'package:app_i_never/src/features/domain/entities/phrase_language.enum.dart';
import 'package:app_i_never/src/features/domain/repository/suggest_phrase.repository.dart';
import 'package:dartz/dartz.dart';

abstract class ISuggestPhraseUseCase {
  Future<Either<Exception, bool>> call(PhraseLanguage phraseLanguage, PhraseEntity phraseEntity);
}

class SuggestPhraseUseCaseImp implements ISuggestPhraseUseCase {
  final ISuggestPhraseRepository repository;

  SuggestPhraseUseCaseImp(this.repository);

  @override
  Future<Either<Exception, bool>> call(PhraseLanguage phraseLanguage, PhraseEntity phraseEntity) {
    return repository(phraseLanguage, phraseEntity);
  }
}
