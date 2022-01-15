import 'package:app_i_never/src/features/data/datasources/get_phrases.datasource.dart';
import 'package:dartz/dartz.dart';
import 'package:app_i_never/src/features/domain/entities/phrase.entity.dart';

class GetPhrasesDataSourceImp implements IGetPhrasesDataSource {
  @override
  Future<Either<Exception, List<PhraseEntity>>> call() {
    try {
      final List<PhraseEntity> listOfPhrases = [
        PhraseEntity('1', '11'),
        PhraseEntity('2', '22'),
        PhraseEntity('3', '33'),
      ];
      return Future.value(Right(listOfPhrases));
    } on Exception catch (e) {
      return Future.value(Left(e));
    } catch(o){
      print('${o.runtimeType} - ${o.toString()}');
      return Future.value(Left(Exception('Unknow error')));
    }
  }
}
