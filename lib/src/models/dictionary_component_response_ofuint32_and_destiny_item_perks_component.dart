import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_item_perks_component.dart';
import '../enums/component_privacy_setting.dart';

part 'dictionary_component_response_ofuint32_and_destiny_item_perks_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfuint32AndDestinyItemPerksComponent{	
	DictionaryComponentResponseOfuint32AndDestinyItemPerksComponent();

	
	@JsonKey(name:'data')
	Map<String, DestinyItemPerksComponent>? data;
	
	@JsonKey(name:'privacy',fromJson:decodeComponentPrivacySetting,toJson:encodeComponentPrivacySetting)
	ComponentPrivacySetting? privacy;
	
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool? disabled;

	factory DictionaryComponentResponseOfuint32AndDestinyItemPerksComponent.fromJson(Map<String, dynamic> json) {
		return _$DictionaryComponentResponseOfuint32AndDestinyItemPerksComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfuint32AndDestinyItemPerksComponentToJson(this);

	static Future<DictionaryComponentResponseOfuint32AndDestinyItemPerksComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DictionaryComponentResponseOfuint32AndDestinyItemPerksComponent>((json)=>DictionaryComponentResponseOfuint32AndDestinyItemPerksComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}