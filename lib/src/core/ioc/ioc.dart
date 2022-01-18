import 'package:app_i_never/src/feature/data/datasources/get_phrases.datasource.dart';
import 'package:app_i_never/src/feature/data/datasources/suggest_phrase.datasource.dart';
import 'package:app_i_never/src/feature/data/repositories/get_phrases_imp.repository.dart';
import 'package:app_i_never/src/feature/data/repositories/suggest_phrase_imp.repository.dart';
import 'package:app_i_never/src/feature/domain/repository/get_phrases.repository.dart';
import 'package:app_i_never/src/feature/domain/repository/suggest_phrase.repository.dart';
import 'package:app_i_never/src/feature/domain/usercases/get_phrases.usecase.dart';
import 'package:app_i_never/src/feature/domain/usercases/suggest_phrase.usecase.dart';
import 'package:app_i_never/src/feature/external/get_phrases_imp.datasource.dart';
import 'package:app_i_never/src/feature/external/suggest_phrase_imp.datasource.dart';
import 'package:app_i_never/src/feature/presentation/controller/home.controller.dart';
import 'package:app_i_never/src/feature/presentation/controller/suggest.controller.dart';
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

    getIt.registerSingleton<HomeController>(HomeController(GetIt.I()));
    getIt.registerFactory(() => SuggestController(GetIt.I()));
  }
}
