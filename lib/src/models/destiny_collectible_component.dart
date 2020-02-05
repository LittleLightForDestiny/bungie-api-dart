import 'package:json_annotation/json_annotation.dart';

import '../enums/destiny_collectible_state.dart';

part 'destiny_collectible_component.g.dart';

@JsonSerializable()
class DestinyCollectibleComponent{
	
	DestinyCollectibleComponent();

	factory DestinyCollectibleComponent.fromJson(Map<String, dynamic> json) => _$DestinyCollectibleComponentFromJson(json);

	@JsonKey(name:'state')
	DestinyCollectibleState state;

	
	
	Map<String, dynamic> toJson() => _$DestinyCollectibleComponentToJson(this);
}