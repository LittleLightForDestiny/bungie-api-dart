import 'destiny_objective_display_properties.dart';

/* An item can have objectives on it. In practice, these are the exclusive purview of "Quest Step" items: DestinyInventoryItemDefinitions that represent a specific step in a Quest.
Quest steps have 1:M objectives that we end up processing and returning in live data as DestinyQuestStatus data, and other useful information. */
class DestinyItemObjectiveBlockDefinition{
	
	/* The hashes to Objectives (DestinyObjectiveDefinition) that are part of this Quest Step, in the order that they should be rendered. */
	List<int> objectiveHashes;
	
	/* For every entry in objectiveHashes, there is a corresponding entry in this array at the same index. If the objective is meant to be associated with a specific DestinyActivityDefinition, there will be a valid hash at that index. Otherwise, it will be invalid (0).
Rendered somewhat obsolete by perObjectiveDisplayProperties, which currently has much the same information but may end up with more info in the future. */
	List<int> displayActivityHashes;
	
	/* If True, all objectives must be completed for the step to be completed. If False, any one objective can be completed for the step to be completed. */
	bool requireFullObjectiveCompletion;
	
	/* The hash for the DestinyInventoryItemDefinition representing the Quest to which this Quest Step belongs. */
	int questlineItemHash;
	
	/* The localized string for narrative text related to this quest step, if any. */
	String narrative;
	
	/* The localized string describing an action to be performed associated with the objectives, if any. */
	String objectiveVerbName;
	
	/* The identifier for the type of quest being performed, if any. Not associated with any fixed definition, yet. */
	String questTypeIdentifier;
	
	/* A hashed value for the questTypeIdentifier, because apparently I like to be redundant. */
	int questTypeHash;
	
	/* One entry per Objective on the item, it will have related display information. */
	List<DestinyObjectiveDisplayProperties> perObjectiveDisplayProperties;
	DestinyItemObjectiveBlockDefinition(
		this.objectiveHashes,
		this.displayActivityHashes,
		this.requireFullObjectiveCompletion,
		this.questlineItemHash,
		this.narrative,
		this.objectiveVerbName,
		this.questTypeIdentifier,
		this.questTypeHash,
		this.perObjectiveDisplayProperties,
	);

	static DestinyItemObjectiveBlockDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemObjectiveBlockDefinition(
				data['objectiveHashes'] != null ? data['objectiveHashes']?.cast<int>() ?? null : null,
				data['displayActivityHashes'] != null ? data['displayActivityHashes']?.cast<int>() ?? null : null,
				data['requireFullObjectiveCompletion'],
				data['questlineItemHash'],
				data['narrative'],
				data['objectiveVerbName'],
				data['questTypeIdentifier'],
				data['questTypeHash'],
				data['perObjectiveDisplayProperties'] != null ? DestinyObjectiveDisplayProperties.fromList(data['perObjectiveDisplayProperties']) : null,
		);
	}

	static List<DestinyItemObjectiveBlockDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemObjectiveBlockDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyItemObjectiveBlockDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['objectiveHashes'] = this.objectiveHashes;
			data['displayActivityHashes'] = this.displayActivityHashes;
			data['requireFullObjectiveCompletion'] = this.requireFullObjectiveCompletion;
			data['questlineItemHash'] = this.questlineItemHash;
			data['narrative'] = this.narrative;
			data['objectiveVerbName'] = this.objectiveVerbName;
			data['questTypeIdentifier'] = this.questTypeIdentifier;
			data['questTypeHash'] = this.questTypeHash;
			data['perObjectiveDisplayProperties'] = this.perObjectiveDisplayProperties.map((item)=>item.toMap()).toList();
		return data;
	}
}