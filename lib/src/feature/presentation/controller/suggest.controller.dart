import 'package:app_i_never/src/feature/domain/entities/phrase.entity.dart';
import 'package:app_i_never/src/feature/domain/entities/phrase_language.enum.dart';
import 'package:app_i_never/src/feature/domain/usercases/suggest_phrase.usecase.dart';
import 'package:faker/faker.dart';
import 'package:mobx/mobx.dart';
part 'suggest.controller.g.dart';

class SuggestController = _SuggestControllerBase with _$SuggestController;

abstract class _SuggestControllerBase with Store {
  final ISuggestPhraseUseCase suggestPhraseUseCase;

  _SuggestControllerBase(this.suggestPhraseUseCase);

  @observable
  bool isLoading = false;

  @action
  Future<bool> sendSuggestPhrase(String text, String owner) async {
    try {
      isLoading = true;

      final faker = Faker();

      if (owner.isEmpty) {
        owner = faker.person.firstName();
      }

      final result = await suggestPhraseUseCase(
          PhraseLanguage.BR, PhraseEntity(text, owner));

      return result.fold((l) {
        print('DEU RUIM!');
        return false;
      }, (r) {
        print('DEU BOM!');
        return true;
      });
    } catch (e) {
      return false;
    } finally {
      isLoading = false;
    }
  }
}
