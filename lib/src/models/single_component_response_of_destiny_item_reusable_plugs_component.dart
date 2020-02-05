import 'package:json_annotation/json_annotation.dart';

import 'destiny_item_reusable_plugs_component.dart';
import '../enums/component_privacy_setting.dart';

part 'single_component_response_of_destiny_item_reusable_plugs_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyItemReusablePlugsComponent{
	
	SingleComponentResponseOfDestinyItemReusablePlugsComponent();

	factory SingleComponentResponseOfDestinyItemReusablePlugsComponent.fromJson(Map<String, dynamic> json) => _$SingleComponentResponseOfDestinyItemReusablePlugsComponentFromJson(json);

	@JsonKey(name:'data')
	DestinyItemReusablePlugsComponent data;
	@JsonKey(name:'privacy',unknownEnumValue:ComponentPrivacySetting.None)
	ComponentPrivacySetting privacy;

	
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyItemReusablePlugsComponentToJson(this);
}