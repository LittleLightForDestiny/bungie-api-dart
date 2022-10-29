import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_collectibles_component.dart';
import '../enums/component_privacy_setting.dart';

part 'dictionary_component_response_ofint64_and_destiny_collectibles_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfint64AndDestinyCollectiblesComponent{	
	DictionaryComponentResponseOfint64AndDestinyCollectiblesComponent();

	
	@JsonKey(name:'data')
	Map<String, DestinyCollectiblesComponent>? data;
	
	@JsonKey(name:'privacy',fromJson:decodeComponentPrivacySetting,toJson:encodeComponentPrivacySetting)
	ComponentPrivacySetting? privacy;
	
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool? disabled;

	factory DictionaryComponentResponseOfint64AndDestinyCollectiblesComponent.fromJson(Map<String, dynamic> json) {
		return _$DictionaryComponentResponseOfint64AndDestinyCollectiblesComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfint64AndDestinyCollectiblesComponentToJson(this);

	static Future<DictionaryComponentResponseOfint64AndDestinyCollectiblesComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DictionaryComponentResponseOfint64AndDestinyCollectiblesComponent>((json)=>DictionaryComponentResponseOfint64AndDestinyCollectiblesComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}