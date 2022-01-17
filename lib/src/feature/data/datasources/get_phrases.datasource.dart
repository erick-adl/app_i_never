import 'package:app_i_never/src/feature/domain/entities/phrase.entity.dart';
import 'package:app_i_never/src/feature/domain/entities/phrase_language.enum.dart';
import 'package:dartz/dartz.dart';

abstract class IGetPhrasesDataSource {
  Future<Either<Exception, List<PhraseEntity>>> call(PhraseLanguage phraseLanguage);
}