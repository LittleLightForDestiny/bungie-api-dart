import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_item_plug_objectives_component.dart';
import '../enums/component_privacy_setting.dart';

part 'dictionary_component_response_ofint64_and_destiny_item_plug_objectives_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfint64AndDestinyItemPlugObjectivesComponent{	
	DictionaryComponentResponseOfint64AndDestinyItemPlugObjectivesComponent();

	
	@JsonKey(name:'data')
	Map<String, DestinyItemPlugObjectivesComponent>? data;
	
	@JsonKey(name:'privacy',fromJson:decodeComponentPrivacySetting,toJson:encodeComponentPrivacySetting)
	ComponentPrivacySetting? privacy;
	
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool? disabled;

	factory DictionaryComponentResponseOfint64AndDestinyItemPlugObjectivesComponent.fromJson(Map<String, dynamic> json) {
		return _$DictionaryComponentResponseOfint64AndDestinyItemPlugObjectivesComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfint64AndDestinyItemPlugObjectivesComponentToJson(this);

	static Future<DictionaryComponentResponseOfint64AndDestinyItemPlugObjectivesComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DictionaryComponentResponseOfint64AndDestinyItemPlugObjectivesComponent>((json)=>DictionaryComponentResponseOfint64AndDestinyItemPlugObjectivesComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}