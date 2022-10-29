import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_inventory_component.dart';
import '../enums/component_privacy_setting.dart';

part 'dictionary_component_response_ofint64_and_destiny_inventory_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfint64AndDestinyInventoryComponent{	
	DictionaryComponentResponseOfint64AndDestinyInventoryComponent();

	
	@JsonKey(name:'data')
	Map<String, DestinyInventoryComponent>? data;
	
	@JsonKey(name:'privacy',fromJson:decodeComponentPrivacySetting,toJson:encodeComponentPrivacySetting)
	ComponentPrivacySetting? privacy;
	
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool? disabled;

	factory DictionaryComponentResponseOfint64AndDestinyInventoryComponent.fromJson(Map<String, dynamic> json) {
		return _$DictionaryComponentResponseOfint64AndDestinyInventoryComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfint64AndDestinyInventoryComponentToJson(this);

	static Future<DictionaryComponentResponseOfint64AndDestinyInventoryComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DictionaryComponentResponseOfint64AndDestinyInventoryComponent>((json)=>DictionaryComponentResponseOfint64AndDestinyInventoryComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}