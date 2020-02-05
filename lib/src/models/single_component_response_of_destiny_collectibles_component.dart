import 'package:json_annotation/json_annotation.dart';

import 'destiny_collectibles_component.dart';
import '../enums/component_privacy_setting.dart';

part 'single_component_response_of_destiny_collectibles_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyCollectiblesComponent{
	
	SingleComponentResponseOfDestinyCollectiblesComponent();

	factory SingleComponentResponseOfDestinyCollectiblesComponent.fromJson(Map<String, dynamic> json) => _$SingleComponentResponseOfDestinyCollectiblesComponentFromJson(json);

	@JsonKey(name:'data')
	DestinyCollectiblesComponent data;
	@JsonKey(name:'privacy',unknownEnumValue:ComponentPrivacySetting.None)
	ComponentPrivacySetting privacy;

	
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyCollectiblesComponentToJson(this);
}