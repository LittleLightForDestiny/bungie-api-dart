import 'destiny_display_properties_definition.dart';

/* Defines a Character Class in Destiny 2. These are types of characters you can play, like Titan, Warlock, and Hunter. */
class DestinyClassDefinition{
	
	/* In Destiny 1, we added a convenience Enumeration for referring to classes. We've kept it, though mostly for posterity. This is the enum value for this definition's class. */
	int classType;
	
	/*  */
	DestinyDisplayPropertiesDefinition displayProperties;
	
	/* A localized string referring to the singular form of the Class's name when referred to in gendered form. Keyed by the DestinyGender. */
	Map<String, String> genderedClassNames;
	
	/*  */
	Map<String, String> genderedClassNamesByGenderHash;
	
	/* Mentors don't really mean anything anymore. Don't expect this to be populated. */
	int mentorVendorHash;
	
	/* The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
When entities refer to each other in Destiny content, it is this hash that they are referring to. */
	int hash;
	
	/* The index of the entity as it was found in the investment tables. */
	int index;
	
	/* If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! */
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