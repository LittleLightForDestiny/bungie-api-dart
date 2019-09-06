import 'destiny_objective_progress.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_item_objectives_component.g.dart';

/// Items can have objectives and progression. When you request this block, you will obtain information about any Objectives and progression tied to this item.
@JsonSerializable()
class DestinyItemObjectivesComponent {

	/// If the item has a hard association with objectives, your progress on them will be defined here. 
	/// Objectives are our standard way to describe a series of tasks that have to be completed for a reward.
	@JsonKey(name:'objectives')
	List<DestinyObjectiveProgress> objectives;

	/// I may regret naming it this way - but this represents when an item has an objective that doesn&#39;t serve a beneficial purpose, but rather is used for &quot;flavor&quot; or additional information. For instance, when Emblems track specific stats, those stats are represented as Objectives on the item.
	@JsonKey(name:'flavorObjective')
	DestinyObjectiveProgress flavorObjective;

	/// If we have any information on when these objectives were completed, this will be the date of that completion. This won&#39;t be on many items, but could be interesting for some items that do store this information.
	@JsonKey(name:'dateCompleted')
	String dateCompleted;
	DestinyItemObjectivesComponent();

	factory DestinyItemObjectivesComponent.fromJson(Map<String, dynamic> json) => _$DestinyItemObjectivesComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyItemObjectivesComponentToJson(this);
}
