import 'package:json_annotation/json_annotation.dart';

import 'destiny_character_activities_component.dart';
import '../enums/component_privacy_setting.dart';

part 'dictionary_component_response_ofint64_and_destiny_character_activities_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfint64AndDestinyCharacterActivitiesComponent{
	
	DictionaryComponentResponseOfint64AndDestinyCharacterActivitiesComponent();

	factory DictionaryComponentResponseOfint64AndDestinyCharacterActivitiesComponent.fromJson(Map<String, dynamic> json) => _$DictionaryComponentResponseOfint64AndDestinyCharacterActivitiesComponentFromJson(json);

	@JsonKey(name:'data')
	Map<String, DestinyCharacterActivitiesComponent> data;
	@JsonKey(name:'privacy',unknownEnumValue:ComponentPrivacySetting.None)
	ComponentPrivacySetting privacy;

	
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfint64AndDestinyCharacterActivitiesComponentToJson(this);
}