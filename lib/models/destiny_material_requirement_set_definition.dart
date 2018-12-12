import 'destiny_material_requirement.dart';
class DestinyMaterialRequirementSetDefinition{
	List<DestinyMaterialRequirement> materials;
	int hash;
	int index;
	bool redacted;
	DestinyMaterialRequirementSetDefinition(
		List<DestinyMaterialRequirement> this.materials,
		int this.hash,
		int this.index,
		bool this.redacted,
	);

	static DestinyMaterialRequirementSetDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyMaterialRequirementSetDefinition(
				DestinyMaterialRequirement.fromList(data['materials']),
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