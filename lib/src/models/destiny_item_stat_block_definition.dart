import 'destiny_inventory_item_stat_definition.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_item_stat_block_definition.g.dart';

/// Information about the item&#39;s calculated stats, with as much data as we can find for the stats without having an actual instance of the item.
/// Note that this means the entire concept of providing these stats is fundamentally insufficient: we cannot predict with 100% accuracy the conditions under which an item can spawn, so we use various heuristics to attempt to simulate the conditions as accurately as possible. Actual stats for items in-game can and will vary, but these should at least be useful base points for comparison and display.
/// It is also worth noting that some stats, like Magazine size, have further calculations performed on them by scripts in-game and on the game servers that BNet does not have access to. We cannot know how those stats are further transformed, and thus some stats will be inaccurate even on instances of items in BNet vs. how they appear in-game. This is a known limitation of our item statistics, without any planned fix.
@JsonSerializable()
class DestinyItemStatBlockDefinition {

	/// If true, the game won&#39;t show the &quot;primary&quot; stat on this item when you inspect it.
	/// NOTE: This is being manually mapped, because I happen to want it in a block that isn&#39;t going to directly create this derivative block.
	@JsonKey(name:'disablePrimaryStatDisplay')
	bool disablePrimaryStatDisplay;

	/// If the item&#39;s stats are meant to be modified by a DestinyStatGroupDefinition, this will be the identifier for that definition.
	/// If you are using live data or precomputed stats data on the DestinyInventoryItemDefinition.stats.stats property, you don&#39;t have to worry about statGroupHash and how it alters stats: the already altered stats are provided to you. But if you want to see how the sausage gets made, or perform computations yourself, this is valuable information.
	@JsonKey(name:'statGroupHash')
	int statGroupHash;

	/// If you are looking for precomputed values for the stats on a weapon, this is where they are stored. Technically these are the &quot;Display&quot; stat values. Please see DestinyStatsDefinition for what Display Stat Values means, it&#39;s a very long story... but essentially these are the closest values BNet can get to the item stats that you see in-game.
	/// These stats are keyed by the DestinyStatDefinition&#39;s hash identifier for the stat that&#39;s found on the item.
	@JsonKey(name:'stats')
	Map<String, DestinyInventoryItemStatDefinition> stats;

	/// A quick and lazy way to determine whether any stat other than the &quot;primary&quot; stat is actually visible on the item. Items often have stats that we return in case people find them useful, but they&#39;re not part of the &quot;Stat Group&quot; and thus we wouldn&#39;t display them in our UI. If this is False, then we&#39;re not going to display any of these stats other than the primary one.
	@JsonKey(name:'hasDisplayableStats')
	bool hasDisplayableStats;

	/// This stat is determined to be the &quot;primary&quot; stat, and can be looked up in the stats or any other stat collection related to the item.
	/// Use this hash to look up the stat&#39;s value using DestinyInventoryItemDefinition.stats.stats, and the renderable data for the primary stat in the related DestinyStatDefinition.
	@JsonKey(name:'primaryBaseStatHash')
	int primaryBaseStatHash;
	DestinyItemStatBlockDefinition();

	factory DestinyItemStatBlockDefinition.fromJson(Map<String, dynamic> json) => _$DestinyItemStatBlockDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyItemStatBlockDefinitionToJson(this);
}
