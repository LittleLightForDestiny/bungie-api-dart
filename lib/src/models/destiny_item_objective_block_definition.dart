import 'destiny_objective_display_properties.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_item_objective_block_definition.g.dart';

/// An item can have objectives on it. In practice, these are the exclusive purview of &quot;Quest Step&quot; items: DestinyInventoryItemDefinitions that represent a specific step in a Quest.
/// Quest steps have 1:M objectives that we end up processing and returning in live data as DestinyQuestStatus data, and other useful information.
@JsonSerializable()
class DestinyItemObjectiveBlockDefinition {

	/// The hashes to Objectives (DestinyObjectiveDefinition) that are part of this Quest Step, in the order that they should be rendered.
	@JsonKey(name:'objectiveHashes')
	List<int> objectiveHashes;

	/// For every entry in objectiveHashes, there is a corresponding entry in this array at the same index. If the objective is meant to be associated with a specific DestinyActivityDefinition, there will be a valid hash at that index. Otherwise, it will be invalid (0).
	/// Rendered somewhat obsolete by perObjectiveDisplayProperties, which currently has much the same information but may end up with more info in the future.
	@JsonKey(name:'displayActivityHashes')
	List<int> displayActivityHashes;

	/// If True, all objectives must be completed for the step to be completed. If False, any one objective can be completed for the step to be completed.
	@JsonKey(name:'requireFullObjectiveCompletion')
	bool requireFullObjectiveCompletion;

	/// The hash for the DestinyInventoryItemDefinition representing the Quest to which this Quest Step belongs.
	@JsonKey(name:'questlineItemHash')
	int questlineItemHash;

	/// The localized string for narrative text related to this quest step, if any.
	@JsonKey(name:'narrative')
	String narrative;

	/// The localized string describing an action to be performed associated with the objectives, if any.
	@JsonKey(name:'objectiveVerbName')
	String objectiveVerbName;

	/// The identifier for the type of quest being performed, if any. Not associated with any fixed definition, yet.
	@JsonKey(name:'questTypeIdentifier')
	String questTypeIdentifier;

	/// A hashed value for the questTypeIdentifier, because apparently I like to be redundant.
	@JsonKey(name:'questTypeHash')
	int questTypeHash;

	/// One entry per Objective on the item, it will have related display information.
	@JsonKey(name:'perObjectiveDisplayProperties')
	List<DestinyObjectiveDisplayProperties> perObjectiveDisplayProperties;
	DestinyItemObjectiveBlockDefinition();

	factory DestinyItemObjectiveBlockDefinition.fromJson(Map<String, dynamic> json) => _$DestinyItemObjectiveBlockDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyItemObjectiveBlockDefinitionToJson(this);
}
