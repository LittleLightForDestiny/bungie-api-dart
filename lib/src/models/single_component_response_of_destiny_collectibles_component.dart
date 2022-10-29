import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_collectibles_component.dart';
import '../enums/component_privacy_setting.dart';

part 'single_component_response_of_destiny_collectibles_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyCollectiblesComponent{	
	SingleComponentResponseOfDestinyCollectiblesComponent();

	
	@JsonKey(name:'data')
	DestinyCollectiblesComponent? data;
	
	@JsonKey(name:'privacy',fromJson:decodeComponentPrivacySetting,toJson:encodeComponentPrivacySetting)
	ComponentPrivacySetting? privacy;
	
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool? disabled;

	factory SingleComponentResponseOfDestinyCollectiblesComponent.fromJson(Map<String, dynamic> json) {
		return _$SingleComponentResponseOfDestinyCollectiblesComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyCollectiblesComponentToJson(this);

	static Future<SingleComponentResponseOfDestinyCollectiblesComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, SingleComponentResponseOfDestinyCollectiblesComponent>((json)=>SingleComponentResponseOfDestinyCollectiblesComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}