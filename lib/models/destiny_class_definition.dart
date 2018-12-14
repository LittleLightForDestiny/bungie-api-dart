import 'destiny_display_properties_definition.dart';
class DestinyClassDefinition{
	int classType;
	DestinyDisplayPropertiesDefinition displayProperties;
	Map<String, String> genderedClassNames;
	Map<String, String> genderedClassNamesByGenderHash;
	int mentorVendorHash;
	int hash;
	int index;
	bool redacted;
	DestinyClassDefinition(
		this.classType,
		this.displayProperties,
		this.genderedClassNames,
		this.genderedClassNamesByGenderHash,
		this.mentorVendorHash,
		this.hash,
		this.index,
		this.redacted,
	);

	static DestinyClassDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyClassDefinition(
				data['classType'],
				data['displayProperties'] != null ? DestinyDisplayPropertiesDefinition.fromMap(data['displayProperties']) : null,
				data['genderedClassNames'] != null ? Map<String, String>.from(data['genderedClassNames'].map((k, v)=>MapEntry(k, v))) : null,
				data['genderedClassNamesByGenderHash'] != null ? Map<String, String>.from(data['genderedClassNamesByGenderHash'].map((k, v)=>MapEntry(k, v))) : null,
				data['mentorVendorHash'],
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyClassDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyClassDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyClassDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['classType'] = this.classType;
			data['displayProperties'] = this.displayProperties.toMap();
			data['genderedClassNames'] = this.genderedClassNames;
			data['genderedClassNamesByGenderHash'] = this.genderedClassNamesByGenderHash;
			data['mentorVendorHash'] = this.mentorVendorHash;
			data['hash'] = this.hash;
			data['index'] = this.index;
			data['redacted'] = this.redacted;
		return data;
	}
}