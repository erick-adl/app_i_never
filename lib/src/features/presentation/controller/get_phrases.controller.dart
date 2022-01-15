import 'package:app_i_never/src/features/domain/entities/phrase.entity.dart';
import 'package:app_i_never/src/features/domain/usercases/get_phrases.usecase.dart';
import 'package:mobx/mobx.dart';
part 'get_phrases.controller.g.dart';

class GetPhrasesController = _GetPhrasesControllerBase
    with _$GetPhrasesController;

abstract class _GetPhrasesControllerBase with Store {
  final IGetPhrasesUseCase getPhrasesUseCase;
  late List<PhraseEntity> listOfPhrases;

  _GetPhrasesControllerBase(this.getPhrasesUseCase) {
    getInitialList();
  }

  Future<void> getInitialList() async {
    final result = await getPhrasesUseCase();

    result.fold((l) => listOfPhrases = [], (r) => listOfPhrases = r);

    if (listOfPhrases.isNotEmpty) {
      print(listOfPhrases);
    }
  }
}
