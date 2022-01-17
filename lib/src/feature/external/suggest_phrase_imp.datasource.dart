import 'package:app_i_never/src/feature/data/datasources/suggest_phrase.datasource.dart';
import 'package:app_i_never/src/feature/domain/entities/phrase_language.enum.dart';
import 'package:dartz/dartz.dart';
import 'package:app_i_never/src/feature/domain/entities/phrase.entity.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SuggestPhraseDataSourceImp implements ISuggestPhraseDataSource {
  final FirebaseFirestore firestore;

  SuggestPhraseDataSourceImp(this.firestore);

  @override
  Future<Either<Exception, bool>> call(
      PhraseLanguage phraseLanguage, PhraseEntity phraseEntity) async {
    try {
      final snapshot = await firestore
          .collection(phraseLanguage.keySuggest)
          .add(phraseEntity.toJson());

      return Right(true);
    } on Exception catch (e) {
      return Left(e);
    } catch (o) {
      print('${o.runtimeType} - ${o.toString()}');
      return Future.value(Left(Exception('Unknow error')));
    }
  }
}
