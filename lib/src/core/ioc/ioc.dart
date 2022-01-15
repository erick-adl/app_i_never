import 'package:app_i_never/src/features/data/datasources/get_phrases.datasource.dart';
import 'package:app_i_never/src/features/data/repositories/get_phrases_imp.repository.dart';
import 'package:app_i_never/src/features/domain/repository/get_phrases.repository.dart';
import 'package:app_i_never/src/features/domain/usercases/get_phrases.usecase.dart';
import 'package:app_i_never/src/features/external/get_phrases_imp.datasource.dart';
import 'package:app_i_never/src/features/presentation/controller/get_phrases.controller.dart';
import 'package:get_it/get_it.dart';

class Ioc {
  static init() {
    GetIt getIt = GetIt.instance;

    getIt.registerSingleton<IGetPhrasesDataSource>(GetPhrasesDataSourceImp());

    getIt.registerSingleton<IGetPhrasesRepository>(
        GetPhrasesRepositoryImp(GetIt.instance()));

    getIt.registerSingleton<IGetPhrasesUseCase>(
        GetPhrasesUseCaseImp(GetIt.instance()));

    getIt.registerFactory(() => GetPhrasesController(GetIt.I()));
  }
}
