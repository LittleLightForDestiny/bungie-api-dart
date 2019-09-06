import 'destiny_character_progression_component.dart';

import 'package:json_annotation/json_annotation.dart';
part 'dictionary_component_response_ofint64_and_destiny_character_progression_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfint64AndDestinyCharacterProgressionComponent {

	@JsonKey(name:'data')
	Map<String, DestinyCharacterProgressionComponent> data;

	@JsonKey(name:'privacy')
	int privacy;
	DictionaryComponentResponseOfint64AndDestinyCharacterProgressionComponent();

	factory DictionaryComponentResponseOfint64AndDestinyCharacterProgressionComponent.fromJson(Map<String, dynamic> json) => _$DictionaryComponentResponseOfint64AndDestinyCharacterProgressionComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfint64AndDestinyCharacterProgressionComponentToJson(this);
}
