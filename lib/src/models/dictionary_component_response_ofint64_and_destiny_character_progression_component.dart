import 'package:json_annotation/json_annotation.dart';

import 'destiny_character_progression_component.dart';
import '../enums/component_privacy_setting.dart';

part 'dictionary_component_response_ofint64_and_destiny_character_progression_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfint64AndDestinyCharacterProgressionComponent{
	
	DictionaryComponentResponseOfint64AndDestinyCharacterProgressionComponent();

	factory DictionaryComponentResponseOfint64AndDestinyCharacterProgressionComponent.fromJson(Map<String, dynamic> json) {
		return _$DictionaryComponentResponseOfint64AndDestinyCharacterProgressionComponentFromJson(json);
	}

	@JsonKey(name:'data')
	Map<String, DestinyCharacterProgressionComponent>? data;
	@JsonKey(name:'privacy',unknownEnumValue:ComponentPrivacySetting.ProtectedInvalidEnumValue)
	ComponentPrivacySetting? privacy;
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool? disabled;

	
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfint64AndDestinyCharacterProgressionComponentToJson(this);
}