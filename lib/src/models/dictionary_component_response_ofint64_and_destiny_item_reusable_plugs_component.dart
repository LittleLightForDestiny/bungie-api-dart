import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_item_reusable_plugs_component.dart';
import '../enums/component_privacy_setting.dart';

part 'dictionary_component_response_ofint64_and_destiny_item_reusable_plugs_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfint64AndDestinyItemReusablePlugsComponent{	
	DictionaryComponentResponseOfint64AndDestinyItemReusablePlugsComponent();

	
	@JsonKey(name:'data')
	Map<String, DestinyItemReusablePlugsComponent>? data;
	
	@JsonKey(name:'privacy',fromJson:decodeComponentPrivacySetting,toJson:encodeComponentPrivacySetting)
	ComponentPrivacySetting? privacy;
	
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool? disabled;

	factory DictionaryComponentResponseOfint64AndDestinyItemReusablePlugsComponent.fromJson(Map<String, dynamic> json) {
		return _$DictionaryComponentResponseOfint64AndDestinyItemReusablePlugsComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfint64AndDestinyItemReusablePlugsComponentToJson(this);

	static Future<DictionaryComponentResponseOfint64AndDestinyItemReusablePlugsComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DictionaryComponentResponseOfint64AndDestinyItemReusablePlugsComponent>((json)=>DictionaryComponentResponseOfint64AndDestinyItemReusablePlugsComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}