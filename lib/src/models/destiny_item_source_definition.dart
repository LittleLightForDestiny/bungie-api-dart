import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_inventory_item_stat_definition.dart';

part 'destiny_item_source_definition.g.dart';

/// Properties of a DestinyInventoryItemDefinition that store all of the information we were able to discern about how the item spawns, and where you can find the item.
/// Items will have many of these sources, one per level at which it spawns, to try and give more granular data about where items spawn for specific level ranges.
@JsonSerializable()
class DestinyItemSourceDefinition{	
	DestinyItemSourceDefinition();

	
	/// The level at which the item spawns. Essentially the Primary Key for this source data: there will be multiple of these source entries per item that has source data, grouped by the level at which the item spawns.
	@JsonKey(name:'level')
	int? level;
	
	/// The minimum Quality at which the item spawns for this level. Examine DestinyInventoryItemDefinition for more information about what Quality means. Just don't ask Phaedrus about it, he'll never stop talking and you'll have to write a book about it.
	@JsonKey(name:'minQuality')
	int? minQuality;
	
	/// The maximum quality at which the item spawns for this level.
	@JsonKey(name:'maxQuality')
	int? maxQuality;
	
	/// The minimum Character Level required for equipping the item when the item spawns at the item level defined on this DestinyItemSourceDefinition, as far as we saw in our processing.
	@JsonKey(name:'minLevelRequired')
	int? minLevelRequired;
	
	/// The maximum Character Level required for equipping the item when the item spawns at the item level defined on this DestinyItemSourceDefinition, as far as we saw in our processing.
	@JsonKey(name:'maxLevelRequired')
	int? maxLevelRequired;
	
	/// The stats computed for this level/quality range.
	@JsonKey(name:'computedStats')
	Map<String, DestinyInventoryItemStatDefinition>? computedStats;
	
	/// The DestinyRewardSourceDefinitions found that can spawn the item at this level.
	@JsonKey(name:'sourceHashes')
	List<int>? sourceHashes;

	factory DestinyItemSourceDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyItemSourceDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyItemSourceDefinitionToJson(this);

	static Future<DestinyItemSourceDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyItemSourceDefinition>((json)=>DestinyItemSourceDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}