import 'package:json_annotation/json_annotation.dart';


part 'destiny_collectible_component.g.dart';

@JsonSerializable()
class DestinyCollectibleComponent{
	
	DestinyCollectibleComponent();

	factory DestinyCollectibleComponent.fromJson(Map<String, dynamic> json) => _$DestinyCollectibleComponentFromJson(json);

	@JsonKey(name:'state')
	int state;

	
	
	Map<String, dynamic> toJson() => _$DestinyCollectibleComponentToJson(this);
}