
/* Defines the conditions under which an intrinsic perk is applied while participating in an Objective.
These perks will generally not be benefit-granting perks, but rather a perk that modifies gameplay in some interesting way. */
class DestinyObjectivePerkEntryDefinition{
	
	/* The hash identifier of the DestinySandboxPerkDefinition that will be applied to the character. */
	int perkHash;
	
	/* An enumeration indicating whether it will be applied as long as the Objective is active, when it's completed, or until it's completed. */
	int style;
	DestinyObjectivePerkEntryDefinition(
		this.perkHash,
		this.style,
	);

	static DestinyObjectivePerkEntryDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyObjectivePerkEntryDefinition(
				data['perkHash'],
				data['style'],
		);
	}

	static List<DestinyObjectivePerkEntryDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyObjectivePerkEntryDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyObjectivePerkEntryDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['perkHash'] = this.perkHash;
			data['style'] = this.style;
		return data;
	}
}