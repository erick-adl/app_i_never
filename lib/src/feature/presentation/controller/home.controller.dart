import 'package:app_i_never/src/feature/domain/entities/phrase.entity.dart';
import 'package:app_i_never/src/feature/domain/entities/phrase_language.enum.dart';
import 'package:app_i_never/src/feature/domain/usercases/get_phrases.usecase.dart';
import 'package:mobx/mobx.dart';
part 'home.controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final IGetPhrasesUseCase getPhrasesUseCase;

  late List<PhraseEntity> _listOfPhrases;

  get getList => _listOfPhrases;

  _HomeControllerBase(this.getPhrasesUseCase) {
    getInitialList();
  }

  @action
  Future<void> getInitialList() async {
    final result = await getPhrasesUseCase(PhraseLanguage.BR);

    result.fold((l) => _listOfPhrases = [], (r) => _listOfPhrases = r);

    if (_listOfPhrases.isNotEmpty) {
      print(_listOfPhrases);
    }
  }
}
