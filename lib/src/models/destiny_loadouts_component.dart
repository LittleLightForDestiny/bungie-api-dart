import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_loadout_component.dart';

part 'destiny_loadouts_component.g.dart';

@JsonSerializable()
class DestinyLoadoutsComponent{	
	DestinyLoadoutsComponent();

	
	@JsonKey(name:'loadouts')
	List<DestinyLoadoutComponent>? loadouts;

	factory DestinyLoadoutsComponent.fromJson(Map<String, dynamic> json) {
		return _$DestinyLoadoutsComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyLoadoutsComponentToJson(this);

	static Future<DestinyLoadoutsComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyLoadoutsComponent>((json)=>DestinyLoadoutsComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}