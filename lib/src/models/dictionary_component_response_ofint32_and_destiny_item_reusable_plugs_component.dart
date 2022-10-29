import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_item_reusable_plugs_component.dart';
import '../enums/component_privacy_setting.dart';

part 'dictionary_component_response_ofint32_and_destiny_item_reusable_plugs_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfint32AndDestinyItemReusablePlugsComponent{	
	DictionaryComponentResponseOfint32AndDestinyItemReusablePlugsComponent();

	
	@JsonKey(name:'data')
	Map<String, DestinyItemReusablePlugsComponent>? data;
	
	@JsonKey(name:'privacy',fromJson:decodeComponentPrivacySetting,toJson:encodeComponentPrivacySetting)
	ComponentPrivacySetting? privacy;
	
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool? disabled;

	factory DictionaryComponentResponseOfint32AndDestinyItemReusablePlugsComponent.fromJson(Map<String, dynamic> json) {
		return _$DictionaryComponentResponseOfint32AndDestinyItemReusablePlugsComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfint32AndDestinyItemReusablePlugsComponentToJson(this);

	static Future<DictionaryComponentResponseOfint32AndDestinyItemReusablePlugsComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DictionaryComponentResponseOfint32AndDestinyItemReusablePlugsComponent>((json)=>DictionaryComponentResponseOfint32AndDestinyItemReusablePlugsComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}