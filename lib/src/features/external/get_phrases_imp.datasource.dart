import 'package:app_i_never/src/features/data/datasources/get_phrases.datasource.dart';
import 'package:app_i_never/src/features/domain/entities/phrase_language.enum.dart';
import 'package:dartz/dartz.dart';
import 'package:app_i_never/src/features/domain/entities/phrase.entity.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class GetPhrasesDataSourceImp implements IGetPhrasesDataSource {
  final FirebaseFirestore firestore;

  GetPhrasesDataSourceImp(this.firestore);

  @override
  Future<Either<Exception, List<PhraseEntity>>> call(PhraseLanguage phraseLanguage) async {
    try {
      final snapshot = await firestore.collection(phraseLanguage.key).get();

      final List<PhraseEntity> listOfPhrases = snapshot.docs
          .map((QueryDocumentSnapshot<Map<String, dynamic>> e) =>
              PhraseEntity.fromJson(e.data()))
          .toList();

      return Right(listOfPhrases);
    } on Exception catch (e) {
      return Left(e);
    } catch (o) {
      print('${o.runtimeType} - ${o.toString()}');
      return Future.value(Left(Exception('Unknow error')));
    }
  }
}
