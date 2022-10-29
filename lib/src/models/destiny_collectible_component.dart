import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import '../enums/destiny_collectible_state.dart';

part 'destiny_collectible_component.g.dart';

@JsonSerializable()
class DestinyCollectibleComponent{	
	DestinyCollectibleComponent();

	
	@JsonKey(name:'state')
	DestinyCollectibleState? state;

	factory DestinyCollectibleComponent.fromJson(Map<String, dynamic> json) {
		return _$DestinyCollectibleComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyCollectibleComponentToJson(this);

	static Future<DestinyCollectibleComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyCollectibleComponent>((json)=>DestinyCollectibleComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}