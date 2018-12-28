
/* An intrinsic perk on an item, and the requirements for it to be activated. */
class DestinyItemPerkEntryDefinition{
	
	/* If this perk is not active, this is the string to show for why it's not providing its benefits. */
	String requirementDisplayString;
	
	/* A hash identifier for the DestinySandboxPerkDefinition being provided on the item. */
	int perkHash;
	
	/* Indicates whether this perk should be shown, or if it should be shown disabled. */
	int perkVisibility;
	DestinyItemPerkEntryDefinition(
		this.requirementDisplayString,
		this.perkHash,
		this.perkVisibility,
	);

	static DestinyItemPerkEntryDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemPerkEntryDefinition(
				data['requirementDisplayString'],
				data['perkHash'],
				data['perkVisibility'],
		);
	}

	static List<DestinyItemPerkEntryDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemPerkEntryDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyItemPerkEntryDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['requirementDisplayString'] = this.requirementDisplayString;
			data['perkHash'] = this.perkHash;
			data['perkVisibility'] = this.perkVisibility;
		return data;
	}
}