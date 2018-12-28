import 'destiny_display_properties_definition.dart';

/** Gender is a social construct, and as such we have definitions for Genders. Right now there happens to only be two, but we'll see what the future holds. */
class DestinyGenderDefinition{
	
	/** This is a quick reference enumeration for all of the currently defined Genders. We use the enumeration for quicker lookups in related data, like DestinyClassDefinition.genderedClassNames. */
	int genderType;
	
	/** Many Destiny*Definition contracts - the "first order" entities of Destiny that have their own tables in the Manifest Database - also have displayable information. This is the base class for that display information. */
	DestinyDisplayPropertiesDefinition displayProperties;
	
	/** The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
When entities refer to each other in Destiny content, it is this hash that they are referring to. */
	int hash;
	
	/** The index of the entity as it was found in the investment tables. */
	int index;
	
	/** If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! */
	bool redacted;
	DestinyGenderDefinition(
		this.genderType,
		this.displayProperties,
		this.hash,
		this.index,
		this.redacted,
	);

	static DestinyGenderDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyGenderDefinition(
				data['genderType'],
				data['displayProperties'] != null ? DestinyDisplayPropertiesDefinition.fromMap(data['displayProperties']) : null,
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyGenderDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyGenderDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyGenderDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['genderType'] = this.genderType;
			data['displayProperties'] = this.displayProperties.toMap();
			data['hash'] = this.hash;
			data['index'] = this.index;
			data['redacted'] = this.redacted;
		return data;
	}
}