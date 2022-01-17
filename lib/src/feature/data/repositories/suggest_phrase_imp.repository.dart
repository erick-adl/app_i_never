import 'package:app_i_never/src/feature/data/datasources/suggest_phrase.datasource.dart';
import 'package:app_i_never/src/feature/domain/entities/phrase.entity.dart';
import 'package:app_i_never/src/feature/domain/entities/phrase_language.enum.dart';
import 'package:app_i_never/src/feature/domain/repository/suggest_phrase.repository.dart';
import 'package:dartz/dartz.dart';

class SuggestPhraseRepositoryImp implements ISuggestPhraseRepository {
  final ISuggestPhraseDataSource datasource;

  SuggestPhraseRepositoryImp(this.datasource);

  @override
  Future<Either<Exception, bool>> call(PhraseLanguage phraseLanguage, PhraseEntity phraseEntity) {
    return datasource(phraseLanguage, phraseEntity);
  }
}