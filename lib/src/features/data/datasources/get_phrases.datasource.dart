import 'package:app_i_never/src/features/domain/entities/phrase.entity.dart';
import 'package:dartz/dartz.dart';

abstract class IGetPhrasesDataSource {
  Future<Either<Exception, List<PhraseEntity>>> call();
}