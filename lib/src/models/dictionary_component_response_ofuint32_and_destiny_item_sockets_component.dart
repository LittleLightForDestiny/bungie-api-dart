import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_item_sockets_component.dart';
import '../enums/component_privacy_setting.dart';

part 'dictionary_component_response_ofuint32_and_destiny_item_sockets_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfuint32AndDestinyItemSocketsComponent{	
	DictionaryComponentResponseOfuint32AndDestinyItemSocketsComponent();

	
	@JsonKey(name:'data')
	Map<String, DestinyItemSocketsComponent>? data;
	
	@JsonKey(name:'privacy',fromJson:decodeComponentPrivacySetting,toJson:encodeComponentPrivacySetting)
	ComponentPrivacySetting? privacy;
	
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool? disabled;

	factory DictionaryComponentResponseOfuint32AndDestinyItemSocketsComponent.fromJson(Map<String, dynamic> json) {
		return _$DictionaryComponentResponseOfuint32AndDestinyItemSocketsComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfuint32AndDestinyItemSocketsComponentToJson(this);

	static Future<DictionaryComponentResponseOfuint32AndDestinyItemSocketsComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DictionaryComponentResponseOfuint32AndDestinyItemSocketsComponent>((json)=>DictionaryComponentResponseOfuint32AndDestinyItemSocketsComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}