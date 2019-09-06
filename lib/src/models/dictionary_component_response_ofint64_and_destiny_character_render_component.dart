import 'destiny_character_render_component.dart';

import 'package:json_annotation/json_annotation.dart';
part 'dictionary_component_response_ofint64_and_destiny_character_render_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfint64AndDestinyCharacterRenderComponent {

	@JsonKey(name:'data')
	Map<String, DestinyCharacterRenderComponent> data;

	@JsonKey(name:'privacy')
	int privacy;
	DictionaryComponentResponseOfint64AndDestinyCharacterRenderComponent();

	factory DictionaryComponentResponseOfint64AndDestinyCharacterRenderComponent.fromJson(Map<String, dynamic> json) => _$DictionaryComponentResponseOfint64AndDestinyCharacterRenderComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfint64AndDestinyCharacterRenderComponentToJson(this);
}
