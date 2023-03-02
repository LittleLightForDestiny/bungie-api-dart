import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_social_commendations_component.dart';
import '../enums/component_privacy_setting.dart';

part 'single_component_response_of_destiny_social_commendations_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinySocialCommendationsComponent{	
	SingleComponentResponseOfDestinySocialCommendationsComponent();

	
	@JsonKey(name:'data')
	DestinySocialCommendationsComponent? data;
	
	@JsonKey(name:'privacy',fromJson:decodeComponentPrivacySetting,toJson:encodeComponentPrivacySetting)
	ComponentPrivacySetting? privacy;
	
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool? disabled;

	factory SingleComponentResponseOfDestinySocialCommendationsComponent.fromJson(Map<String, dynamic> json) {
		return _$SingleComponentResponseOfDestinySocialCommendationsComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinySocialCommendationsComponentToJson(this);

	static Future<SingleComponentResponseOfDestinySocialCommendationsComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, SingleComponentResponseOfDestinySocialCommendationsComponent>((json)=>SingleComponentResponseOfDestinySocialCommendationsComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}