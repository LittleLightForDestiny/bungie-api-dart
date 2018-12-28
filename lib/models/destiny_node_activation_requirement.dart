
/* Talent nodes have requirements that must be met before they can be activated.
This describes the material costs, the Level of the Talent Grid's progression required, and other conditional information that limits whether a talent node can be activated. */
class DestinyNodeActivationRequirement{
	
	/* The Progression level on the Talent Grid required to activate this node.
See DestinyTalentGridDefinition.progressionHash for the related Progression, and read DestinyProgressionDefinition's documentation to learn more about Progressions. */
	int gridLevel;
	
	/* The list of hash identifiers for material requirement sets: materials that are required for the node to be activated. See DestinyMaterialRequirementSetDefinition for more information about material requirements.
In this case, only a single DestinyMaterialRequirementSetDefinition will be chosen from this list, and we won't know which one will be chosen until an instance of the item is created. */
	List<int> materialRequirementHashes;
	DestinyNodeActivationRequirement(
		this.gridLevel,
		this.materialRequirementHashes,
	);

	static DestinyNodeActivationRequirement fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyNodeActivationRequirement(
				data['gridLevel'],
				data['materialRequirementHashes'] != null ? data['materialRequirementHashes']?.cast<int>() ?? null : null,
		);
	}

	static List<DestinyNodeActivationRequirement> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyNodeActivationRequirement> list = new List();
    data.forEach((item) {
      list.add(DestinyNodeActivationRequirement.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['gridLevel'] = this.gridLevel;
			data['materialRequirementHashes'] = this.materialRequirementHashes;
		return data;
	}
}