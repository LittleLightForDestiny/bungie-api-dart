import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_display_properties_definition.dart';
import '../enums/destiny_gating_scope.dart';
import '../enums/destiny_unlock_value_uistyle.dart';
import 'destiny_objective_perk_entry_definition.dart';
import 'destiny_objective_stat_entry_definition.dart';
import '../enums/destiny_objective_ui_style.dart';

part 'destiny_objective_definition.g.dart';

/// Defines an &quot;Objective&quot;.
/// An objective is a specific task you should accomplish in the game. These are referred to by:
/// - Quest Steps (which are DestinyInventoryItemDefinition entities with Objectives)
/// - Challenges (which are Objectives defined on an DestinyActivityDefintion)
/// - Milestones (which refer to Objectives that are defined on both Quest Steps and Activities)
/// - Anything else that the designers decide to do later.
/// Objectives have progress, a notion of having been Completed, human readable data describing the task to be accomplished, and a lot of optional tack-on data that can enhance the information provided about the task.
@JsonSerializable()
class DestinyObjectiveDefinition{	
	DestinyObjectiveDefinition();

	
	/// Ideally, this should tell you what your task is. I'm not going to lie to you though. Sometimes this doesn't have useful information at all. Which sucks, but there's nothing either of us can do about it.
	@JsonKey(name:'displayProperties')
	DestinyDisplayPropertiesDefinition? displayProperties;
	
	/// The value that the unlock value defined in unlockValueHash must reach in order for the objective to be considered Completed. Used in calculating progress and completion status.
	@JsonKey(name:'completionValue')
	int? completionValue;
	
	/// A shortcut for determining the most restrictive gating that this Objective is set to use. This includes both the dynamic determination of progress and of completion values. See the DestinyGatingScope enum's documentation for more details.
	@JsonKey(name:'scope',fromJson:decodeDestinyGatingScope,toJson:encodeDestinyGatingScope)
	DestinyGatingScope? scope;
	
	/// OPTIONAL: a hash identifier for the location at which this objective must be accomplished, if there is a location defined. Look up the DestinyLocationDefinition for this hash for that additional location info.
	@JsonKey(name:'locationHash')
	int? locationHash;
	
	/// If true, the value is allowed to go negative.
	@JsonKey(name:'allowNegativeValue')
	bool? allowNegativeValue;
	
	/// If true, you can effectively "un-complete" this objective if you lose progress after crossing the completion threshold. 
	/// If False, once you complete the task it will remain completed forever by locking the value.
	@JsonKey(name:'allowValueChangeWhenCompleted')
	bool? allowValueChangeWhenCompleted;
	
	/// If true, completion means having an unlock value less than or equal to the completionValue.
	/// If False, completion means having an unlock value greater than or equal to the completionValue.
	@JsonKey(name:'isCountingDownward')
	bool? isCountingDownward;
	
	/// The UI style applied to the objective. It's an enum, take a look at DestinyUnlockValueUIStyle for details of the possible styles. Use this info as you wish to customize your UI.
	/// DEPRECATED: This is no longer populated by Destiny 2 game content. Please use inProgressValueStyle and completedValueStyle instead.
	@JsonKey(name:'valueStyle',fromJson:decodeDestinyUnlockValueUIStyle,toJson:encodeDestinyUnlockValueUIStyle)
	DestinyUnlockValueUIStyle? valueStyle;
	
	/// Text to describe the progress bar.
	@JsonKey(name:'progressDescription')
	String? progressDescription;
	
	/// If this objective enables Perks intrinsically, the conditions for that enabling are defined here.
	@JsonKey(name:'perks')
	DestinyObjectivePerkEntryDefinition? perks;
	
	/// If this objective enables modifications on a player's stats intrinsically, the conditions are defined here.
	@JsonKey(name:'stats')
	DestinyObjectiveStatEntryDefinition? stats;
	
	/// If nonzero, this is the minimum value at which the objective's progression should be shown. Otherwise, don't show it yet.
	@JsonKey(name:'minimumVisibilityThreshold')
	int? minimumVisibilityThreshold;
	
	/// If True, the progress will continue even beyond the point where the objective met its minimum completion requirements. Your UI will have to accommodate it.
	@JsonKey(name:'allowOvercompletion')
	bool? allowOvercompletion;
	
	/// If True, you should continue showing the progression value in the UI after it's complete. I mean, we already do that in BNet anyways, but if you want to be better behaved than us you could honor this flag.
	@JsonKey(name:'showValueOnComplete')
	bool? showValueOnComplete;
	
	/// The style to use when the objective is completed.
	@JsonKey(name:'completedValueStyle',fromJson:decodeDestinyUnlockValueUIStyle,toJson:encodeDestinyUnlockValueUIStyle)
	DestinyUnlockValueUIStyle? completedValueStyle;
	
	/// The style to use when the objective is still in progress.
	@JsonKey(name:'inProgressValueStyle',fromJson:decodeDestinyUnlockValueUIStyle,toJson:encodeDestinyUnlockValueUIStyle)
	DestinyUnlockValueUIStyle? inProgressValueStyle;
	
	/// Objectives can have arbitrary UI-defined identifiers that define the style applied to objectives. For convenience, known UI labels will be defined in the uiStyle enum value.
	@JsonKey(name:'uiLabel')
	String? uiLabel;
	
	/// If the objective has a known UI label value, this property will represent it.
	@JsonKey(name:'uiStyle',fromJson:decodeDestinyObjectiveUiStyle,toJson:encodeDestinyObjectiveUiStyle)
	DestinyObjectiveUiStyle? uiStyle;
	
	/// The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
	/// When entities refer to each other in Destiny content, it is this hash that they are referring to.
	@JsonKey(name:'hash')
	int? hash;
	
	/// The index of the entity as it was found in the investment tables.
	@JsonKey(name:'index')
	int? index;
	
	/// If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry!
	@JsonKey(name:'redacted')
	bool? redacted;

	factory DestinyObjectiveDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyObjectiveDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyObjectiveDefinitionToJson(this);

	static Future<DestinyObjectiveDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyObjectiveDefinition>((json)=>DestinyObjectiveDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}