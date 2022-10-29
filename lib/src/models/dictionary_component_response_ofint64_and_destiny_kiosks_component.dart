import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_kiosks_component.dart';
import '../enums/component_privacy_setting.dart';

part 'dictionary_component_response_ofint64_and_destiny_kiosks_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfint64AndDestinyKiosksComponent{	
	DictionaryComponentResponseOfint64AndDestinyKiosksComponent();

	
	@JsonKey(name:'data')
	Map<String, DestinyKiosksComponent>? data;
	
	@JsonKey(name:'privacy',fromJson:decodeComponentPrivacySetting,toJson:encodeComponentPrivacySetting)
	ComponentPrivacySetting? privacy;
	
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool? disabled;

	factory DictionaryComponentResponseOfint64AndDestinyKiosksComponent.fromJson(Map<String, dynamic> json) {
		return _$DictionaryComponentResponseOfint64AndDestinyKiosksComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfint64AndDestinyKiosksComponentToJson(this);

	static Future<DictionaryComponentResponseOfint64AndDestinyKiosksComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DictionaryComponentResponseOfint64AndDestinyKiosksComponent>((json)=>DictionaryComponentResponseOfint64AndDestinyKiosksComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}