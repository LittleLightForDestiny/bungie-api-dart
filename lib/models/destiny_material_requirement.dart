
/* Many actions relating to items require you to expend materials: - Activating a talent node - Inserting a plug into a socket The items will refer to material requirements by a materialRequirementsHash in these cases, and this is the definition for those requirements in terms of the item required, how much of it is required and other interesting info. This is one of the rare/strange times where a single contract class is used both in definitions *and* in live data response contracts. I'm not sure yet whether I regret that. */
class DestinyMaterialRequirement{
	
	/* The hash identifier of the material required. Use it to look up the material's DestinyInventoryItemDefinition. */
	int itemHash;
	
	/* If True, the material will be removed from the character's inventory when the action is performed. */
	bool deleteOnAction;
	
	/* The amount of the material required. */
	int count;
	
	/* If True, this requirement is "silent": don't bother showing it in a material requirements display. I mean, I'm not your mom: I'm not going to tell you you *can't* show it. But we won't show it in our UI. */
	bool omitFromRequirements;
	DestinyMaterialRequirement(
		this.itemHash,
		this.deleteOnAction,
		this.count,
		this.omitFromRequirements,
	);

	static DestinyMaterialRequirement fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyMaterialRequirement(
				data['itemHash'],
				data['deleteOnAction'],
				data['count'],
				data['omitFromRequirements'],
		);
	}

	static List<DestinyMaterialRequirement> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyMaterialRequirement> list = new List();
    data.forEach((item) {
      list.add(DestinyMaterialRequirement.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['itemHash'] = this.itemHash;
			data['deleteOnAction'] = this.deleteOnAction;
			data['count'] = this.count;
			data['omitFromRequirements'] = this.omitFromRequirements;
		return data;
	}
}