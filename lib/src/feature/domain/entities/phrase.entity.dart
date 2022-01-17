import 'package:freezed_annotation/freezed_annotation.dart';

part 'phrase.entity.freezed.dart';
part 'phrase.entity.g.dart';

@freezed
class PhraseEntity with _$PhraseEntity {


  factory PhraseEntity(String text, String owner) = _phraseEntity;


  factory PhraseEntity.fromJson(Map<String, dynamic> json) => _$PhraseEntityFromJson(json);

}