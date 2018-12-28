import 'destiny_display_properties_definition.dart';

/** Stat Groups (DestinyStatGroupDefinition) has the ability to override the localized text associated with stats that are to be shown on the items with which they are associated.
This defines a specific overridden stat. You could theoretically check these before rendering your stat UI, and for each stat that has an override show these displayProperties instead of those on the DestinyStatDefinition.
Or you could be like us, and skip that for now because the game has yet to actually use this feature. But know that it's here, waiting for a resilliant young designer to take up the mantle and make us all look foolish by showing the wrong name for stats.
Note that, if this gets used, the override will apply only to items using the overriding Stat Group. Other items will still show the default stat's name/description. */
class DestinyStatOverrideDefinition{
	
	/** The hash identifier of the stat whose display properties are being overridden. */
	int statHash;
	
	/** The display properties to show instead of the base DestinyStatDefinition display properties. */
	DestinyDisplayPropertiesDefinition displayProperties;
	DestinyStatOverrideDefinition(
		this.statHash,
		this.displayProperties,
	);

	static DestinyStatOverrideDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyStatOverrideDefinition(
				data['statHash'],
				data['displayProperties'] != null ? DestinyDisplayPropertiesDefinition.fromMap(data['displayProperties']) : null,
		);
	}

	static List<DestinyStatOverrideDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyStatOverrideDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyStatOverrideDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['statHash'] = this.statHash;
			data['displayProperties'] = this.displayProperties;
		return data;
	}
}