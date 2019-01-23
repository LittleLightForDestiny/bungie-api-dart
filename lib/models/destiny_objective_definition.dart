import 'destiny_display_properties_definition.dart';
import 'destiny_objective_perk_entry_definition.dart';
import 'destiny_objective_stat_entry_definition.dart';

/** Defines an "Objective".
An objective is a specific task you should accomplish in the game. These are referred to by:
- Quest Steps (which are DestinyInventoryItemDefinition entities with Objectives)
- Challenges (which are Objectives defined on an DestinyActivityDefintion)
- Milestones (which refer to Objectives that are defined on both Quest Steps and Activities)
- Anything else that the designers decide to do later.
Objectives have progress, a notion of having been Completed, human readable data describing the task to be accomplished, and a lot of optional tack-on data that can enhance the information provided about the task. */
class DestinyObjectiveDefinition{
	
	/** Ideally, this should tell you what your task is. I'm not going to lie to you though. Sometimes this doesn't have useful information at all. Which sucks, but there's nothing either of us can do about it. */
	DestinyDisplayPropertiesDefinition displayProperties;
	
	/** The value that the unlock value defined in unlockValueHash must reach in order for the objective to be considered Completed. Used in calculating progress and completion status. */
	int completionValue;
	
	/** A shortcut for determining the most restrictive gating that this Objective is set to use. This includes both the dynamic determination of progress and of completion values. See the DestinyGatingScope enum's documentation for more details. */
	int scope;
	
	/** OPTIONAL: a hash identifier for the location at which this objective must be accomplished, if there is a location defined. Look up the DestinyLocationDefinition for this hash for that additional location info. */
	int locationHash;
	
	/** If true, the value is allowed to go negative. */
	bool allowNegativeValue;
	
	/** If true, you can effectively "un-complete" this objective if you lose progress after crossing the completion threshold. 
If False, once you complete the task it will remain completed forever by locking the value. */
	bool allowValueChangeWhenCompleted;
	
	/** If true, completion means having an unlock value less than or equal to the completionValue.
If False, completion means having an unlock value greater than or equal to the completionValue. */
	bool isCountingDownward;
	
	/** The UI style applied to the objective. It's an enum, take a look at DestinyUnlockValueUIStyle for details of the possible styles. Use this info as you wish to customize your UI. */
	int valueStyle;
	
	/** Text to describe the progress bar. */
	String progressDescription;
	
	/** If this objective enables Perks intrinsically, the conditions for that enabling are defined here. */
	DestinyObjectivePerkEntryDefinition perks;
	
	/** If this objective enables modifications on a player's stats intrinsically, the conditions are defined here. */
	DestinyObjectiveStatEntryDefinition stats;
	
	/** If nonzero, this is the minimum value at which the objective's progression should be shown. Otherwise, don't show it yet. */
	int minimumVisibilityThreshold;
	
	/** If True, the progress will continue even beyond the point where the objective met its minimum completion requirements. Your UI will have to accommodate it. */
	bool allowOvercompletion;
	
	/** If True, you should continue showing the progression value in the UI after it's complete. I mean, we already do that in BNet anyways, but if you want to be better behaved than us you could honor this flag. */
	bool showValueOnComplete;
	
	/** The style to use when the objective is completed. */
	int completedValueStyle;
	
	/** The style to use when the objective is still in progress. */
	int inProgressValueStyle;
	
	/** The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
When entities refer to each other in Destiny content, it is this hash that they are referring to. */
	int hash;
	
	/** The index of the entity as it was found in the investment tables. */
	int index;
	
	/** If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! */
	bool redacted;
	DestinyObjectiveDefinition(
		this.displayProperties,
		this.completionValue,
		this.scope,
		this.locationHash,
		this.allowNegativeValue,
		this.allowValueChangeWhenCompleted,
		this.isCountingDownward,
		this.valueStyle,
		this.progressDescription,
		this.perks,
		this.stats,
		this.minimumVisibilityThreshold,
		this.allowOvercompletion,
		this.showValueOnComplete,
		this.completedValueStyle,
		this.inProgressValueStyle,
		this.hash,
		this.index,
		this.redacted,
	);

	static DestinyObjectiveDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyObjectiveDefinition(
				data['displayProperties'] != null ? DestinyDisplayPropertiesDefinition.fromMap(data['displayProperties']) : null,
				data['completionValue'],
				data['scope'],
				data['locationHash'],
				data['allowNegativeValue'],
				data['allowValueChangeWhenCompleted'],
				data['isCountingDownward'],
				data['valueStyle'],
				data['progressDescription'],
				data['perks'] != null ? DestinyObjectivePerkEntryDefinition.fromMap(data['perks']) : null,
				data['stats'] != null ? DestinyObjectiveStatEntryDefinition.fromMap(data['stats']) : null,
				data['minimumVisibilityThreshold'],
				data['allowOvercompletion'],
				data['showValueOnComplete'],
				data['completedValueStyle'],
				data['inProgressValueStyle'],
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyObjectiveDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyObjectiveDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyObjectiveDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['displayProperties'] = this.displayProperties != null? this.displayProperties.toMap() : null;
			data['completionValue'] = this.completionValue;
			data['scope'] = this.scope;
			data['locationHash'] = this.locationHash;
			data['allowNegativeValue'] = this.allowNegativeValue;
			data['allowValueChangeWhenCompleted'] = this.allowValueChangeWhenCompleted;
			data['isCountingDownward'] = this.isCountingDownward;
			data['valueStyle'] = this.valueStyle;
			data['progressDescription'] = this.progressDescription;
			data['perks'] = this.perks != null? this.perks.toMap() : null;
			data['stats'] = this.stats != null? this.stats.toMap() : null;
			data['minimumVisibilityThreshold'] = this.minimumVisibilityThreshold;
			data['allowOvercompletion'] = this.allowOvercompletion;
			data['showValueOnComplete'] = this.showValueOnComplete;
			data['completedValueStyle'] = this.completedValueStyle;
			data['inProgressValueStyle'] = this.inProgressValueStyle;
			data['hash'] = this.hash;
			data['index'] = this.index;
			data['redacted'] = this.redacted;
		return data;
	}
}