
/** Represents a variant on an activity for a Milestone: a specific difficulty tier, or a specific activity variant for example.
These will often have more specific details, such as an associated Guided Game, progression steps, tier-specific rewards, and custom values. */
class DestinyMilestoneActivityVariantDefinition{
	
	/** The hash to use for looking up the variant Activity's definition (DestinyActivityDefinition), where you can find its distinguishing characteristics such as difficulty level and recommended light level. 
Frequently, that will be the only distinguishing characteristics in practice, which is somewhat of a bummer. */
	int activityHash;
	
	/** If you care to do so, render the variants in the order prescribed by this value.
When you combine live Milestone data with the definition, the order becomes more useful because you'll be cross-referencing between the definition and live data. */
	int order;
	DestinyMilestoneActivityVariantDefinition(
		this.activityHash,
		this.order,
	);

	static DestinyMilestoneActivityVariantDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyMilestoneActivityVariantDefinition(
				data['activityHash'],
				data['order'],
		);
	}

	static List<DestinyMilestoneActivityVariantDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyMilestoneActivityVariantDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyMilestoneActivityVariantDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['activityHash'] = this.activityHash;
			data['order'] = this.order;
		return data;
	}
}