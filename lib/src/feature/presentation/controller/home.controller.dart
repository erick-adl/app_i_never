import 'package:app_i_never/src/feature/domain/entities/phrase.entity.dart';
import 'package:app_i_never/src/feature/domain/entities/phrase_language.enum.dart';
import 'package:app_i_never/src/feature/domain/usercases/get_phrases.usecase.dart';
import 'package:app_i_never/src/feature/domain/usercases/suggest_phrase.usecase.dart';
import 'package:mobx/mobx.dart';
part 'home.controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final IGetPhrasesUseCase getPhrasesUseCase;
  final ISuggestPhraseUseCase suggestPhraseUseCase;

  late List<PhraseEntity> listOfPhrases;

  _HomeControllerBase(this.getPhrasesUseCase, this.suggestPhraseUseCase) {
    getInitialList();
    sendSuggestPhrase();
  }

  @action
  Future<void> getInitialList() async {
    final result = await getPhrasesUseCase(PhraseLanguage.BR);

    result.fold((l) => listOfPhrases = [], (r) => listOfPhrases = r);

    if (listOfPhrases.isNotEmpty) {
      print(listOfPhrases);
    }
  }

  @action
  Future<void> sendSuggestPhrase() async {
    final result = await suggestPhraseUseCase(
        PhraseLanguage.BR, PhraseEntity('text', 'owner'));

    result.fold((l) => listOfPhrases = [], (r) => print('TUUUDO CERTO!'));
  }
}
