import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_stat.dart';

part 'destiny_item_stats_component.g.dart';

/// If you want the stats on an item&#39;s instanced data, get this component.
/// These are stats like Attack, Defense etc... and *not* historical stats.
/// Note that some stats have additional computation in-game at runtime - for instance, Magazine Size - and thus these stats might not be 100% accurate compared to what you see in-game for some stats. I know, it sucks. I hate it too.
@JsonSerializable()
class DestinyItemStatsComponent{	
	DestinyItemStatsComponent();

	
	/// If the item has stats that it provides (damage, defense, etc...), it will be given here.
	@JsonKey(name:'stats')
	Map<String, DestinyStat>? stats;

	factory DestinyItemStatsComponent.fromJson(Map<String, dynamic> json) {
		return _$DestinyItemStatsComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyItemStatsComponentToJson(this);

	static Future<DestinyItemStatsComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyItemStatsComponent>((json)=>DestinyItemStatsComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}