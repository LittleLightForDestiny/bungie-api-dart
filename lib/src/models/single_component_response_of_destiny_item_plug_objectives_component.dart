import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_item_plug_objectives_component.dart';
import '../enums/component_privacy_setting.dart';

part 'single_component_response_of_destiny_item_plug_objectives_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyItemPlugObjectivesComponent{	
	SingleComponentResponseOfDestinyItemPlugObjectivesComponent();

	
	@JsonKey(name:'data')
	DestinyItemPlugObjectivesComponent? data;
	
	@JsonKey(name:'privacy',fromJson:decodeComponentPrivacySetting,toJson:encodeComponentPrivacySetting)
	ComponentPrivacySetting? privacy;
	
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool? disabled;

	factory SingleComponentResponseOfDestinyItemPlugObjectivesComponent.fromJson(Map<String, dynamic> json) {
		return _$SingleComponentResponseOfDestinyItemPlugObjectivesComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyItemPlugObjectivesComponentToJson(this);

	static Future<SingleComponentResponseOfDestinyItemPlugObjectivesComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, SingleComponentResponseOfDestinyItemPlugObjectivesComponent>((json)=>SingleComponentResponseOfDestinyItemPlugObjectivesComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}