import 'destiny_material_requirement.dart';

/** Represent a set of material requirements: Items that either need to be owned or need to be consumed in order to perform an action.
A variety of other entities refer to these as gatekeepers and payments for actions that can be performed in game. */
class DestinyMaterialRequirementSetDefinition{
	
	/** The list of all materials that are required. */
	List<DestinyMaterialRequirement> materials;
	
	/** The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
When entities refer to each other in Destiny content, it is this hash that they are referring to. */
	int hash;
	
	/** The index of the entity as it was found in the investment tables. */
	int index;
	
	/** If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! */
	bool redacted;
	DestinyMaterialRequirementSetDefinition(
		this.materials,
		this.hash,
		this.index,
		this.redacted,
	);

	static DestinyMaterialRequirementSetDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyMaterialRequirementSetDefinition(
				data['materials'] != null ? DestinyMaterialRequirement.fromList(data['materials']) : null,
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyMaterialRequirementSetDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyMaterialRequirementSetDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyMaterialRequirementSetDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['materials'] = this.materials.map((item)=>item.toMap()).toList();
			data['hash'] = this.hash;
			data['index'] = this.index;
			data['redacted'] = this.redacted;
		return data;
	}
}