import 'package:json_annotation/json_annotation.dart';

import 'destiny_item_plug_objectives_component.dart';
import '../enums/component_privacy_setting.dart';

part 'single_component_response_of_destiny_item_plug_objectives_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyItemPlugObjectivesComponent{
	
	SingleComponentResponseOfDestinyItemPlugObjectivesComponent();

	factory SingleComponentResponseOfDestinyItemPlugObjectivesComponent.fromJson(Map<String, dynamic> json) => _$SingleComponentResponseOfDestinyItemPlugObjectivesComponentFromJson(json);

	@JsonKey(name:'data')
	DestinyItemPlugObjectivesComponent data;
	@JsonKey(name:'privacy',unknownEnumValue:ComponentPrivacySetting.None)
	ComponentPrivacySetting privacy;

	
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyItemPlugObjectivesComponentToJson(this);
}