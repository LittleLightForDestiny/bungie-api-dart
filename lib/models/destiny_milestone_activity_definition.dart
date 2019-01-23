import 'destiny_milestone_activity_variant_definition.dart';

/** Milestones can have associated activities which provide additional information about the context, challenges, modifiers, state etc... related to this Milestone. 
Information we need to be able to return that data is defined here, along with Tier data to establish a relationship between a conceptual Activity and its difficulty levels and variants. */
class DestinyMilestoneActivityDefinition{
	
	/** The "Conceptual" activity hash. Basically, we picked the lowest level activity and are treating it as the canonical definition of the activity for rendering purposes.
If you care about the specific difficulty modes and variations, use the activities under "Variants". */
	int conceptualActivityHash;
	
	/** A milestone-referenced activity can have many variants, such as Tiers or alternative modes of play.
Even if there is only a single variant, the details for these are represented within as a variant definition.
It is assumed that, if this DestinyMilestoneActivityDefinition is active, then all variants should be active.
If a Milestone could ever split the variants' active status conditionally, they should all have their own DestinyMilestoneActivityDefinition instead! The potential duplication will be worth it for the obviousness of processing and use. */
	Map<String, DestinyMilestoneActivityVariantDefinition> variants;
	DestinyMilestoneActivityDefinition(
		this.conceptualActivityHash,
		this.variants,
	);

	static DestinyMilestoneActivityDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyMilestoneActivityDefinition(
				data['conceptualActivityHash'],
				data['variants'] != null ? Map<String, DestinyMilestoneActivityVariantDefinition>.from(data['variants'].map((k, v)=>MapEntry(k, DestinyMilestoneActivityVariantDefinition.fromMap(v)))) : null,
		);
	}

	static List<DestinyMilestoneActivityDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyMilestoneActivityDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyMilestoneActivityDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['conceptualActivityHash'] = this.conceptualActivityHash;
			data['variants'] = this.variants != null? this.variants.map((i, v)=>MapEntry(i, v.toMap())) : null;
		return data;
	}
}