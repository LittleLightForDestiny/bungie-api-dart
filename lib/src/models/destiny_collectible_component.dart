
import 'package:json_annotation/json_annotation.dart';
part 'destiny_collectible_component.g.dart';

@JsonSerializable()
class DestinyCollectibleComponent {

	@JsonKey(name:'state')
	int state;
	DestinyCollectibleComponent();

	factory DestinyCollectibleComponent.fromJson(Map<String, dynamic> json) => _$DestinyCollectibleComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyCollectibleComponentToJson(this);
}
