import 'destiny_collectible_component.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_collectibles_component.g.dart';

@JsonSerializable()
class DestinyCollectiblesComponent {

	@JsonKey(name:'collectibles')
	Map<String, DestinyCollectibleComponent> collectibles;
	DestinyCollectiblesComponent();

	factory DestinyCollectiblesComponent.fromJson(Map<String, dynamic> json) => _$DestinyCollectiblesComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyCollectiblesComponentToJson(this);
}
