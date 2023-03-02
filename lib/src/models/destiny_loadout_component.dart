import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_loadout_item_component.dart';

part 'destiny_loadout_component.g.dart';

@JsonSerializable()
class DestinyLoadoutComponent{	
	DestinyLoadoutComponent();

	
	@JsonKey(name:'colorHash')
	int? colorHash;
	
	@JsonKey(name:'iconHash')
	int? iconHash;
	
	@JsonKey(name:'nameHash')
	int? nameHash;
	
	@JsonKey(name:'items')
	List<DestinyLoadoutItemComponent>? items;

	factory DestinyLoadoutComponent.fromJson(Map<String, dynamic> json) {
		return _$DestinyLoadoutComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyLoadoutComponentToJson(this);

	static Future<DestinyLoadoutComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyLoadoutComponent>((json)=>DestinyLoadoutComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}