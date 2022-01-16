import 'package:app_i_never/src/features/domain/entities/phrase.entity.dart';
import 'package:app_i_never/src/features/domain/entities/phrase_language.enum.dart';
import 'package:app_i_never/src/features/domain/repository/get_phrases.repository.dart';
import 'package:dartz/dartz.dart';

abstract class IGetPhrasesUseCase {
  Future<Either<Exception, List<PhraseEntity>>> call(PhraseLanguage phraseLanguage);
}

class GetPhrasesUseCaseImp implements IGetPhrasesUseCase {
  final IGetPhrasesRepository repository;

  GetPhrasesUseCaseImp(this.repository);

  @override
  Future<Either<Exception, List<PhraseEntity>>> call(PhraseLanguage phraseLanguage) {
    return repository(phraseLanguage);
  }
}
