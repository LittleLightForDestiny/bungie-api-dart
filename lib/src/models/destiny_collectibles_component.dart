import 'package:json_annotation/json_annotation.dart';

import 'destiny_collectible_component.dart';

part 'destiny_collectibles_component.g.dart';

@JsonSerializable()
class DestinyCollectiblesComponent{
	
	DestinyCollectiblesComponent();

	factory DestinyCollectiblesComponent.fromJson(Map<String, dynamic> json) => _$DestinyCollectiblesComponentFromJson(json);

	@JsonKey(name:'collectibles')
	Map<String, DestinyCollectibleComponent> collectibles;

	
	
	Map<String, dynamic> toJson() => _$DestinyCollectiblesComponentToJson(this);
}