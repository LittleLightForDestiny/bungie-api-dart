import 'destiny_public_milestone_activity_variant.dart';

/* A milestone may have one or more conceptual Activities associated with it, and each of those conceptual activities could have a variety of variants, modes, tiers, what-have-you. Our attempts to determine what qualifies as a conceptual activity are, unfortunately, janky. So if you see missing modes or modes that don't seem appropriate to you, let us know and I'll buy you a beer if we ever meet up in person. */
class DestinyPublicMilestoneActivity{
	
	/* The hash identifier of the activity that's been chosen to be considered the canonical "conceptual" activity definition. This may have many variants, defined herein. */
	int activityHash;
	
	/* The activity may have 0-to-many modifiers: if it does, this will contain the hashes to the DestinyActivityModifierDefinition that defines the modifier being applied. */
	List<int> modifierHashes;
	
	/* Every relevant variation of this conceptual activity, including the conceptual activity itself, have variants defined here. */
	List<DestinyPublicMilestoneActivityVariant> variants;
	
	/* The hash identifier of the most specific Activity Mode under which this activity is played. This is useful for situations where the activity in question is - for instance - a PVP map, but it's not clear what mode the PVP map is being played under. If it's a playlist, this will be less specific: but hopefully useful in some way. */
	int activityModeHash;
	
	/* The enumeration equivalent of the most specific Activity Mode under which this activity is played. */
	int activityModeType;
	DestinyPublicMilestoneActivity(
		this.activityHash,
		this.modifierHashes,
		this.variants,
		this.activityModeHash,
		this.activityModeType,
	);

	static DestinyPublicMilestoneActivity fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyPublicMilestoneActivity(
				data['activityHash'],
				data['modifierHashes'] != null ? data['modifierHashes']?.cast<int>() ?? null : null,
				data['variants'] != null ? DestinyPublicMilestoneActivityVariant.fromList(data['variants']) : null,
				data['activityModeHash'],
				data['activityModeType'],
		);
	}

	static List<DestinyPublicMilestoneActivity> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyPublicMilestoneActivity> list = new List();
    data.forEach((item) {
      list.add(DestinyPublicMilestoneActivity.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['activityHash'] = this.activityHash;
			data['modifierHashes'] = this.modifierHashes;
			data['variants'] = this.variants.map((item)=>item.toMap()).toList();
			data['activityModeHash'] = this.activityModeHash;
			data['activityModeType'] = this.activityModeType;
		return data;
	}
}