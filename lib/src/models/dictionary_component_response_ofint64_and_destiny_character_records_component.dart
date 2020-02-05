import 'package:json_annotation/json_annotation.dart';

import 'destiny_character_records_component.dart';
import '../enums/component_privacy_setting.dart';

part 'dictionary_component_response_ofint64_and_destiny_character_records_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfint64AndDestinyCharacterRecordsComponent{
	
	DictionaryComponentResponseOfint64AndDestinyCharacterRecordsComponent();

	factory DictionaryComponentResponseOfint64AndDestinyCharacterRecordsComponent.fromJson(Map<String, dynamic> json) => _$DictionaryComponentResponseOfint64AndDestinyCharacterRecordsComponentFromJson(json);

	@JsonKey(name:'data')
	Map<String, DestinyCharacterRecordsComponent> data;
	@JsonKey(name:'privacy',unknownEnumValue:ComponentPrivacySetting.None)
	ComponentPrivacySetting privacy;

	
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfint64AndDestinyCharacterRecordsComponentToJson(this);
}