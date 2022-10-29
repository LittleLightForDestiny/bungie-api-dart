import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_item_talent_grid_component.dart';
import '../enums/component_privacy_setting.dart';

part 'dictionary_component_response_ofint32_and_destiny_item_talent_grid_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfint32AndDestinyItemTalentGridComponent{	
	DictionaryComponentResponseOfint32AndDestinyItemTalentGridComponent();

	
	@JsonKey(name:'data')
	Map<String, DestinyItemTalentGridComponent>? data;
	
	@JsonKey(name:'privacy',fromJson:decodeComponentPrivacySetting,toJson:encodeComponentPrivacySetting)
	ComponentPrivacySetting? privacy;
	
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool? disabled;

	factory DictionaryComponentResponseOfint32AndDestinyItemTalentGridComponent.fromJson(Map<String, dynamic> json) {
		return _$DictionaryComponentResponseOfint32AndDestinyItemTalentGridComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfint32AndDestinyItemTalentGridComponentToJson(this);

	static Future<DictionaryComponentResponseOfint32AndDestinyItemTalentGridComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DictionaryComponentResponseOfint32AndDestinyItemTalentGridComponent>((json)=>DictionaryComponentResponseOfint32AndDestinyItemTalentGridComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}