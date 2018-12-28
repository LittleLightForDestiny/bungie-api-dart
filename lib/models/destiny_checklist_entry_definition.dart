import 'destiny_display_properties_definition.dart';

/** The properties of an individual checklist item. Note that almost everything is optional: it is *highly* variable what kind of data we'll actually be able to return: at times we may have no other relationships to entities at all.
Whatever UI you build, do it with the knowledge that any given entry might not actually be able to be associated with some other Destiny entity. */
class DestinyChecklistEntryDefinition{
	
	/** The identifier for this Checklist entry. Guaranteed unique only within this Checklist Definition, and not globally/for all checklists. */
	int hash;
	
	/** Even if no other associations exist, we will give you *something* for display properties. In cases where we have no associated entities, it may be as simple as a numerical identifier. */
	DestinyDisplayPropertiesDefinition displayProperties;
	
	/**  */
	int destinationHash;
	
	/**  */
	int locationHash;
	
	/** Note that a Bubble's hash doesn't uniquely identify a "top level" entity in Destiny. Only the combination of location and bubble can uniquely identify a place in the world of Destiny: so if bubbleHash is populated, locationHash must too be populated for it to have any meaning.
You can use this property if it is populated to look up the DestinyLocationDefinition's associated .locationReleases[].activityBubbleName property. */
	int bubbleHash;
	
	/**  */
	int activityHash;
	
	/**  */
	int itemHash;
	
	/**  */
	int vendorHash;
	
	/**  */
	int vendorInteractionIndex;
	
	/** The scope at which this specific entry can be computed. */
	int scope;
	DestinyChecklistEntryDefinition(
		this.hash,
		this.displayProperties,
		this.destinationHash,
		this.locationHash,
		this.bubbleHash,
		this.activityHash,
		this.itemHash,
		this.vendorHash,
		this.vendorInteractionIndex,
		this.scope,
	);

	static DestinyChecklistEntryDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyChecklistEntryDefinition(
				data['hash'],
				data['displayProperties'] != null ? DestinyDisplayPropertiesDefinition.fromMap(data['displayProperties']) : null,
				data['destinationHash'],
				data['locationHash'],
				data['bubbleHash'],
				data['activityHash'],
				data['itemHash'],
				data['vendorHash'],
				data['vendorInteractionIndex'],
				data['scope'],
		);
	}

	static List<DestinyChecklistEntryDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyChecklistEntryDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyChecklistEntryDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['hash'] = this.hash;
			data['displayProperties'] = this.displayProperties;
			data['destinationHash'] = this.destinationHash;
			data['locationHash'] = this.locationHash;
			data['bubbleHash'] = this.bubbleHash;
			data['activityHash'] = this.activityHash;
			data['itemHash'] = this.itemHash;
			data['vendorHash'] = this.vendorHash;
			data['vendorInteractionIndex'] = this.vendorInteractionIndex;
			data['scope'] = this.scope;
		return data;
	}
}