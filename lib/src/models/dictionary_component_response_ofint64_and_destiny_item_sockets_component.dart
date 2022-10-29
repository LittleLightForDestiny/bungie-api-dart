import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_item_sockets_component.dart';
import '../enums/component_privacy_setting.dart';

part 'dictionary_component_response_ofint64_and_destiny_item_sockets_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfint64AndDestinyItemSocketsComponent{	
	DictionaryComponentResponseOfint64AndDestinyItemSocketsComponent();

	
	@JsonKey(name:'data')
	Map<String, DestinyItemSocketsComponent>? data;
	
	@JsonKey(name:'privacy',fromJson:decodeComponentPrivacySetting,toJson:encodeComponentPrivacySetting)
	ComponentPrivacySetting? privacy;
	
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool? disabled;

	factory DictionaryComponentResponseOfint64AndDestinyItemSocketsComponent.fromJson(Map<String, dynamic> json) {
		return _$DictionaryComponentResponseOfint64AndDestinyItemSocketsComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfint64AndDestinyItemSocketsComponentToJson(this);

	static Future<DictionaryComponentResponseOfint64AndDestinyItemSocketsComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DictionaryComponentResponseOfint64AndDestinyItemSocketsComponent>((json)=>DictionaryComponentResponseOfint64AndDestinyItemSocketsComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}