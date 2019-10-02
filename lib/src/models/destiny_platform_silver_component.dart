import 'destiny_item_component.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_platform_silver_component.g.dart';

@JsonSerializable()
class DestinyPlatformSilverComponent{
	
	/// If a Profile is played on multiple platforms, this is the silver they have for each platform, keyed by Membership Type.
	@JsonKey(name:'platformSilver')
	Map<String, DestinyItemComponent> platformSilver;
	DestinyPlatformSilverComponent();

	factory DestinyPlatformSilverComponent.fromJson(Map<String, dynamic> json) => _$DestinyPlatformSilverComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyPlatformSilverComponentToJson(this);
}