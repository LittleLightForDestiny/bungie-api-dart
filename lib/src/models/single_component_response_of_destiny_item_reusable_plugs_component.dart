import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_item_reusable_plugs_component.dart';
import '../enums/component_privacy_setting.dart';

part 'single_component_response_of_destiny_item_reusable_plugs_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyItemReusablePlugsComponent{	
	SingleComponentResponseOfDestinyItemReusablePlugsComponent();

	
	@JsonKey(name:'data')
	DestinyItemReusablePlugsComponent? data;
	
	@JsonKey(name:'privacy',fromJson:decodeComponentPrivacySetting,toJson:encodeComponentPrivacySetting)
	ComponentPrivacySetting? privacy;
	
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool? disabled;

	factory SingleComponentResponseOfDestinyItemReusablePlugsComponent.fromJson(Map<String, dynamic> json) {
		return _$SingleComponentResponseOfDestinyItemReusablePlugsComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyItemReusablePlugsComponentToJson(this);

	static Future<SingleComponentResponseOfDestinyItemReusablePlugsComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, SingleComponentResponseOfDestinyItemReusablePlugsComponent>((json)=>SingleComponentResponseOfDestinyItemReusablePlugsComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}