import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_presentation_nodes_component.dart';
import '../enums/component_privacy_setting.dart';

part 'dictionary_component_response_ofint64_and_destiny_presentation_nodes_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfint64AndDestinyPresentationNodesComponent{	
	DictionaryComponentResponseOfint64AndDestinyPresentationNodesComponent();

	
	@JsonKey(name:'data')
	Map<String, DestinyPresentationNodesComponent>? data;
	
	@JsonKey(name:'privacy',fromJson:decodeComponentPrivacySetting,toJson:encodeComponentPrivacySetting)
	ComponentPrivacySetting? privacy;
	
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool? disabled;

	factory DictionaryComponentResponseOfint64AndDestinyPresentationNodesComponent.fromJson(Map<String, dynamic> json) {
		return _$DictionaryComponentResponseOfint64AndDestinyPresentationNodesComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfint64AndDestinyPresentationNodesComponentToJson(this);

	static Future<DictionaryComponentResponseOfint64AndDestinyPresentationNodesComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DictionaryComponentResponseOfint64AndDestinyPresentationNodesComponent>((json)=>DictionaryComponentResponseOfint64AndDestinyPresentationNodesComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}