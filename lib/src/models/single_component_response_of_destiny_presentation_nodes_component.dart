import 'package:json_annotation/json_annotation.dart';

import 'destiny_presentation_nodes_component.dart';
import '../enums/component_privacy_setting.dart';

part 'single_component_response_of_destiny_presentation_nodes_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyPresentationNodesComponent{
	
	SingleComponentResponseOfDestinyPresentationNodesComponent();

	factory SingleComponentResponseOfDestinyPresentationNodesComponent.fromJson(Map<String, dynamic> json) {
		try{
			return _$SingleComponentResponseOfDestinyPresentationNodesComponentFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'data')
	DestinyPresentationNodesComponent data;
	@JsonKey(name:'privacy',unknownEnumValue:ComponentPrivacySetting.ProtectedInvalidEnumValue)
	ComponentPrivacySetting privacy;
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool disabled;

	
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyPresentationNodesComponentToJson(this);
}