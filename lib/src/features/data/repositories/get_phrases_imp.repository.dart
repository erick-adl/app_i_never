import 'package:app_i_never/src/features/data/datasources/get_phrases.datasource.dart';
import 'package:app_i_never/src/features/domain/entities/phrase.entity.dart';
import 'package:app_i_never/src/features/domain/repository/get_phrases.repository.dart';
import 'package:dartz/dartz.dart';

class GetPhrasesRepositoryImp implements IGetPhrasesRepository {
  final IGetPhrasesDataSource datasource;

  GetPhrasesRepositoryImp(this.datasource);

  @override
  Future<Either<Exception, List<PhraseEntity>>> call() {
    return datasource();
  }
}