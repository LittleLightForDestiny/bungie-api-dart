
/** Returns data about a character's status with a given Objective. Combine with DestinyObjectiveDefinition static data for display purposes. */
class DestinyObjectiveProgress{
	
	/** The unique identifier of the Objective being referred to. Use to look up the DestinyObjectiveDefinition in static data. */
	int objectiveHash;
	
	/** If the Objective has a Destination associated with it, this is the unique identifier of the Destination being referred to. Use to look up the DestinyDestinationDefinition in static data. This will give localized data about *where* in the universe the objective should be achieved. */
	int destinationHash;
	
	/** If the Objective has an Activity associated with it, this is the unique identifier of the Activity being referred to. Use to look up the DestinyActivityDefinition in static data. This will give localized data about *what* you should be playing for the objective to be achieved. */
	int activityHash;
	
	/** If progress has been made, and the progress can be measured numerically, this will be the value of that progress. You can compare it to the DestinyObjectiveDefinition.completionValue property for current vs. upper bounds, and use DestinyObjectiveDefinition.valueStyle to determine how this should be rendered. Note that progress, in Destiny 2, need not be a literal numeric progression. It could be one of a number of possible values, even a Timestamp. Always examine DestinyObjectiveDefinition.valueStyle before rendering progress. */
	int progress;
	
	/** As of Forsaken, objectives' completion value is determined dynamically at runtime.
This value represents the threshold of progress you need to surpass in order for this objective to be considered "complete".
If you were using objective data, switch from using the DestinyObjectiveDefinition's "completionValue" to this value. */
	int completionValue;
	
	/** Whether or not the Objective is completed. */
	bool complete;
	
	/** If this is true, the objective is visible in-game. Otherwise, it's not yet visible to the player. Up to you if you want to honor this property. */
	bool visible;
	DestinyObjectiveProgress(
		this.objectiveHash,
		this.destinationHash,
		this.activityHash,
		this.progress,
		this.completionValue,
		this.complete,
		this.visible,
	);

	static DestinyObjectiveProgress fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyObjectiveProgress(
				data['objectiveHash'],
				data['destinationHash'],
				data['activityHash'],
				data['progress'],
				data['completionValue'],
				data['complete'],
				data['visible'],
		);
	}

	static List<DestinyObjectiveProgress> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyObjectiveProgress> list = new List();
    data.forEach((item) {
      list.add(DestinyObjectiveProgress.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['objectiveHash'] = this.objectiveHash;
			data['destinationHash'] = this.destinationHash;
			data['activityHash'] = this.activityHash;
			data['progress'] = this.progress;
			data['completionValue'] = this.completionValue;
			data['complete'] = this.complete;
			data['visible'] = this.visible;
		return data;
	}
}