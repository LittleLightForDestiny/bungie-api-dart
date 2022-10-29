import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_plug_sets_component.dart';
import '../enums/component_privacy_setting.dart';

part 'dictionary_component_response_ofint64_and_destiny_plug_sets_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfint64AndDestinyPlugSetsComponent{	
	DictionaryComponentResponseOfint64AndDestinyPlugSetsComponent();

	
	@JsonKey(name:'data')
	Map<String, DestinyPlugSetsComponent>? data;
	
	@JsonKey(name:'privacy',fromJson:decodeComponentPrivacySetting,toJson:encodeComponentPrivacySetting)
	ComponentPrivacySetting? privacy;
	
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool? disabled;

	factory DictionaryComponentResponseOfint64AndDestinyPlugSetsComponent.fromJson(Map<String, dynamic> json) {
		return _$DictionaryComponentResponseOfint64AndDestinyPlugSetsComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfint64AndDestinyPlugSetsComponentToJson(this);

	static Future<DictionaryComponentResponseOfint64AndDestinyPlugSetsComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DictionaryComponentResponseOfint64AndDestinyPlugSetsComponent>((json)=>DictionaryComponentResponseOfint64AndDestinyPlugSetsComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}