import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_character_activities_component.dart';
import '../enums/component_privacy_setting.dart';

part 'dictionary_component_response_ofint64_and_destiny_character_activities_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfint64AndDestinyCharacterActivitiesComponent{	
	DictionaryComponentResponseOfint64AndDestinyCharacterActivitiesComponent();

	
	@JsonKey(name:'data')
	Map<String, DestinyCharacterActivitiesComponent>? data;
	
	@JsonKey(name:'privacy',fromJson:decodeComponentPrivacySetting,toJson:encodeComponentPrivacySetting)
	ComponentPrivacySetting? privacy;
	
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool? disabled;

	factory DictionaryComponentResponseOfint64AndDestinyCharacterActivitiesComponent.fromJson(Map<String, dynamic> json) {
		return _$DictionaryComponentResponseOfint64AndDestinyCharacterActivitiesComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfint64AndDestinyCharacterActivitiesComponentToJson(this);

	static Future<DictionaryComponentResponseOfint64AndDestinyCharacterActivitiesComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DictionaryComponentResponseOfint64AndDestinyCharacterActivitiesComponent>((json)=>DictionaryComponentResponseOfint64AndDestinyCharacterActivitiesComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}