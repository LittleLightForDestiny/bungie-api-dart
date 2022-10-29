import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_presentation_nodes_component.dart';
import '../enums/component_privacy_setting.dart';

part 'single_component_response_of_destiny_presentation_nodes_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyPresentationNodesComponent{	
	SingleComponentResponseOfDestinyPresentationNodesComponent();

	
	@JsonKey(name:'data')
	DestinyPresentationNodesComponent? data;
	
	@JsonKey(name:'privacy',fromJson:decodeComponentPrivacySetting,toJson:encodeComponentPrivacySetting)
	ComponentPrivacySetting? privacy;
	
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool? disabled;

	factory SingleComponentResponseOfDestinyPresentationNodesComponent.fromJson(Map<String, dynamic> json) {
		return _$SingleComponentResponseOfDestinyPresentationNodesComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyPresentationNodesComponentToJson(this);

	static Future<SingleComponentResponseOfDestinyPresentationNodesComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, SingleComponentResponseOfDestinyPresentationNodesComponent>((json)=>SingleComponentResponseOfDestinyPresentationNodesComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}