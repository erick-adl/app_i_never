import 'package:app_i_never/src/features/data/datasources/get_phrases.datasource.dart';
import 'package:dartz/dartz.dart';
import 'package:app_i_never/src/features/domain/entities/phrase.entity.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class GetPhrasesDataSourceImp implements IGetPhrasesDataSource {
  final FirebaseFirestore firestore;

  GetPhrasesDataSourceImp(this.firestore);

  @override
  Future<Either<Exception, List<PhraseEntity>>> call() async {
    try {
      final snapshot = await firestore.collection('br_phrases').get();

      snapshot.docs.forEach((element) {
        print(element['text']);
      });

      final List<PhraseEntity> listOfPhrases = [
        PhraseEntity('1', '11'),
        PhraseEntity('2', '22'),
        PhraseEntity('3', '33'),
      ];
      return Future.value(Right(listOfPhrases));
    } on Exception catch (e) {
      return Future.value(Left(e));
    } catch (o) {
      print('${o.runtimeType} - ${o.toString()}');
      return Future.value(Left(Exception('Unknow error')));
    }
  }
}
