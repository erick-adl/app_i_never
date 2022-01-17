import 'package:app_i_never/src/feature/data/datasources/get_phrases.datasource.dart';
import 'package:app_i_never/src/feature/domain/entities/phrase.entity.dart';
import 'package:app_i_never/src/feature/domain/entities/phrase_language.enum.dart';
import 'package:app_i_never/src/feature/domain/repository/get_phrases.repository.dart';
import 'package:dartz/dartz.dart';

class GetPhrasesRepositoryImp implements IGetPhrasesRepository {
  final IGetPhrasesDataSource datasource;

  GetPhrasesRepositoryImp(this.datasource);

  @override
  Future<Either<Exception, List<PhraseEntity>>> call(PhraseLanguage phraseLanguage) {
    return datasource(phraseLanguage);
  }
}