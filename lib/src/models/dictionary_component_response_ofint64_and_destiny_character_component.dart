import 'package:json_annotation/json_annotation.dart';

import 'destiny_character_component.dart';
import '../enums/component_privacy_setting.dart';

part 'dictionary_component_response_ofint64_and_destiny_character_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfint64AndDestinyCharacterComponent{
	
	DictionaryComponentResponseOfint64AndDestinyCharacterComponent();

	factory DictionaryComponentResponseOfint64AndDestinyCharacterComponent.fromJson(Map<String, dynamic> json) => _$DictionaryComponentResponseOfint64AndDestinyCharacterComponentFromJson(json);

	@JsonKey(name:'data')
	Map<String, DestinyCharacterComponent> data;
	@JsonKey(name:'privacy',unknownEnumValue:ComponentPrivacySetting.None)
	ComponentPrivacySetting privacy;

	
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfint64AndDestinyCharacterComponentToJson(this);
}