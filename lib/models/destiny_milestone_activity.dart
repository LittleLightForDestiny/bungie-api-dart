import 'destiny_milestone_activity_variant.dart';

/** Sometimes, we know the specific activity that the Milestone wants you to play. This entity provides additional information about that Activity and all of its variants. (sometimes there's only one variant, but I think you get the point) */
class DestinyMilestoneActivity{
	
	/** The hash of an arbitrarily chosen variant of this activity. We'll go ahead and call that the "canonical" activity, because if you're using this value you should only use it for properties that are common across the variants: things like the name of the activity, it's location, etc... Use this hash to look up the DestinyActivityDefinition of this activity for rendering data. */
	int activityHash;
	
	/** The hash identifier of the most specific Activity Mode under which this activity is played. This is useful for situations where the activity in question is - for instance - a PVP map, but it's not clear what mode the PVP map is being played under. If it's a playlist, this will be less specific: but hopefully useful in some way. */
	int activityModeHash;
	
	/** The enumeration equivalent of the most specific Activity Mode under which this activity is played. */
	int activityModeType;
	
	/** If the activity has modifiers, this will be the list of modifiers that all variants have in common. Perform lookups against DestinyActivityModifierDefinition which defines the modifier being applied to get at the modifier data. Note that, in the DestiyActivityDefinition, you will see many more modifiers than this being referred to: those are all *possible* modifiers for the activity, not the active ones. Use only the active ones to match what's really live. */
	List<int> modifierHashes;
	
	/** If you want more than just name/location/etc... you're going to have to dig into and show the variants of the conceptual activity. These will differ in seemingly arbitrary ways, like difficulty level and modifiers applied. Show it in whatever way tickles your fancy. */
	List<DestinyMilestoneActivityVariant> variants;
	DestinyMilestoneActivity(
		this.activityHash,
		this.activityModeHash,
		this.activityModeType,
		this.modifierHashes,
		this.variants,
	);

	static DestinyMilestoneActivity fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyMilestoneActivity(
				data['activityHash'],
				data['activityModeHash'],
				data['activityModeType'],
				data['modifierHashes'] != null ? data['modifierHashes']?.cast<int>() ?? null : null,
				data['variants'] != null ? DestinyMilestoneActivityVariant.fromList(data['variants']) : null,
		);
	}

	static List<DestinyMilestoneActivity> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyMilestoneActivity> list = new List();
    data.forEach((item) {
      list.add(DestinyMilestoneActivity.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['activityHash'] = this.activityHash;
			data['activityModeHash'] = this.activityModeHash;
			data['activityModeType'] = this.activityModeType;
			data['modifierHashes'] = this.modifierHashes;
			data['variants'] = this.variants.map((item)=>item.toMap()).toList();
		return data;
	}
}