import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_objective_progress.dart';

part 'destiny_item_objectives_component.g.dart';

/// Items can have objectives and progression. When you request this block, you will obtain information about any Objectives and progression tied to this item.
@JsonSerializable()
class DestinyItemObjectivesComponent{	
	DestinyItemObjectivesComponent();

	
	/// If the item has a hard association with objectives, your progress on them will be defined here. 
	/// Objectives are our standard way to describe a series of tasks that have to be completed for a reward.
	@JsonKey(name:'objectives')
	List<DestinyObjectiveProgress>? objectives;
	
	/// I may regret naming it this way - but this represents when an item has an objective that doesn't serve a beneficial purpose, but rather is used for "flavor" or additional information. For instance, when Emblems track specific stats, those stats are represented as Objectives on the item.
	@JsonKey(name:'flavorObjective')
	DestinyObjectiveProgress? flavorObjective;
	
	/// If we have any information on when these objectives were completed, this will be the date of that completion. This won't be on many items, but could be interesting for some items that do store this information.
	@JsonKey(name:'dateCompleted')
	String? dateCompleted;

	factory DestinyItemObjectivesComponent.fromJson(Map<String, dynamic> json) {
		return _$DestinyItemObjectivesComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyItemObjectivesComponentToJson(this);

	static Future<DestinyItemObjectivesComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyItemObjectivesComponent>((json)=>DestinyItemObjectivesComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}