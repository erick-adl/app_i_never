import 'package:app_i_never/src/features/data/datasources/get_phrases.datasource.dart';
import 'package:app_i_never/src/features/data/datasources/suggest_phrase.datasource.dart';
import 'package:app_i_never/src/features/data/repositories/get_phrases_imp.repository.dart';
import 'package:app_i_never/src/features/data/repositories/suggest_phrase_imp.repository.dart';
import 'package:app_i_never/src/features/domain/repository/get_phrases.repository.dart';
import 'package:app_i_never/src/features/domain/repository/suggest_phrase.repository.dart';
import 'package:app_i_never/src/features/domain/usercases/get_phrases.usecase.dart';
import 'package:app_i_never/src/features/domain/usercases/suggest_phrase.usecase.dart';
import 'package:app_i_never/src/features/external/get_phrases_imp.datasource.dart';
import 'package:app_i_never/src/features/external/suggest_phrase_imp.datasource.dart';
import 'package:app_i_never/src/features/presentation/controller/home.controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';

class Ioc {
  static init() {
    GetIt getIt = GetIt.instance;
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    getIt.registerSingleton<IGetPhrasesDataSource>(
        GetPhrasesDataSourceImp(firestore));
    getIt.registerSingleton<ISuggestPhraseDataSource>(
        SuggestPhraseDataSourceImp(firestore));

    getIt.registerSingleton<IGetPhrasesRepository>(
        GetPhrasesRepositoryImp(GetIt.instance()));
    getIt.registerSingleton<ISuggestPhraseRepository>(
        SuggestPhraseRepositoryImp(GetIt.instance()));

    getIt.registerSingleton<IGetPhrasesUseCase>(
        GetPhrasesUseCaseImp(GetIt.instance()));
    getIt.registerSingleton<ISuggestPhraseUseCase>(
        SuggestPhraseUseCaseImp(GetIt.instance()));

    getIt.registerFactory(() => HomeController(GetIt.I(), GetIt.I()));
  }
}
