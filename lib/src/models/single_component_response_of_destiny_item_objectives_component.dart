import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_item_objectives_component.dart';
import '../enums/component_privacy_setting.dart';

part 'single_component_response_of_destiny_item_objectives_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyItemObjectivesComponent{	
	SingleComponentResponseOfDestinyItemObjectivesComponent();

	
	/// Items can have objectives and progression. When you request this block, you will obtain information about any Objectives and progression tied to this item.
	@JsonKey(name:'data')
	DestinyItemObjectivesComponent? data;
	
	@JsonKey(name:'privacy',fromJson:decodeComponentPrivacySetting,toJson:encodeComponentPrivacySetting)
	ComponentPrivacySetting? privacy;
	
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool? disabled;

	factory SingleComponentResponseOfDestinyItemObjectivesComponent.fromJson(Map<String, dynamic> json) {
		return _$SingleComponentResponseOfDestinyItemObjectivesComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyItemObjectivesComponentToJson(this);

	static Future<SingleComponentResponseOfDestinyItemObjectivesComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, SingleComponentResponseOfDestinyItemObjectivesComponent>((json)=>SingleComponentResponseOfDestinyItemObjectivesComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}