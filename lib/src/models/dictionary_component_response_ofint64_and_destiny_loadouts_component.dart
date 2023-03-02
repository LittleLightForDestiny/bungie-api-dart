import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_loadouts_component.dart';
import '../enums/component_privacy_setting.dart';

part 'dictionary_component_response_ofint64_and_destiny_loadouts_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfint64AndDestinyLoadoutsComponent{	
	DictionaryComponentResponseOfint64AndDestinyLoadoutsComponent();

	
	@JsonKey(name:'data')
	Map<String, DestinyLoadoutsComponent>? data;
	
	@JsonKey(name:'privacy',fromJson:decodeComponentPrivacySetting,toJson:encodeComponentPrivacySetting)
	ComponentPrivacySetting? privacy;
	
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool? disabled;

	factory DictionaryComponentResponseOfint64AndDestinyLoadoutsComponent.fromJson(Map<String, dynamic> json) {
		return _$DictionaryComponentResponseOfint64AndDestinyLoadoutsComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfint64AndDestinyLoadoutsComponentToJson(this);

	static Future<DictionaryComponentResponseOfint64AndDestinyLoadoutsComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DictionaryComponentResponseOfint64AndDestinyLoadoutsComponent>((json)=>DictionaryComponentResponseOfint64AndDestinyLoadoutsComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}