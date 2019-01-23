import 'destiny_display_properties_definition.dart';
import 'destiny_faction_vendor_definition.dart';

/** These definitions represent Factions in the game. Factions have ended up unilaterally being related to Vendors that represent them, but that need not necessarily be the case.
A Faction is really just an entity that has a related progression for which a character can gain experience. In Destiny 1, Dead Orbit was an example of a Faction: there happens to be a Vendor that represents Dead Orbit (and indeed, DestinyVendorDefinition.factionHash defines to this relationship), but Dead Orbit could theoretically exist without the Vendor that provides rewards. */
class DestinyFactionDefinition{
	
	/** Many Destiny*Definition contracts - the "first order" entities of Destiny that have their own tables in the Manifest Database - also have displayable information. This is the base class for that display information. */
	DestinyDisplayPropertiesDefinition displayProperties;
	
	/** The hash identifier for the DestinyProgressionDefinition that indicates the character's relationship with this faction in terms of experience and levels. */
	int progressionHash;
	
	/** The faction token item hashes, and their respective progression values. */
	Map<String, int> tokenValues;
	
	/** The faction reward item hash, usually an engram. */
	int rewardItemHash;
	
	/** The faction reward vendor hash, used for faction engram previews. */
	int rewardVendorHash;
	
	/** List of vendors that are associated with this faction. The last vendor that passes the unlock flag checks is the one that should be shown. */
	List<DestinyFactionVendorDefinition> vendors;
	
	/** The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
When entities refer to each other in Destiny content, it is this hash that they are referring to. */
	int hash;
	
	/** The index of the entity as it was found in the investment tables. */
	int index;
	
	/** If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! */
	bool redacted;
	DestinyFactionDefinition(
		this.displayProperties,
		this.progressionHash,
		this.tokenValues,
		this.rewardItemHash,
		this.rewardVendorHash,
		this.vendors,
		this.hash,
		this.index,
		this.redacted,
	);

	static DestinyFactionDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyFactionDefinition(
				data['displayProperties'] != null ? DestinyDisplayPropertiesDefinition.fromMap(data['displayProperties']) : null,
				data['progressionHash'],
				data['tokenValues'] != null ? Map<String, int>.from(data['tokenValues'].map((k, v)=>MapEntry(k, v))) : null,
				data['rewardItemHash'],
				data['rewardVendorHash'],
				data['vendors'] != null ? DestinyFactionVendorDefinition.fromList(data['vendors']) : null,
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyFactionDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyFactionDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyFactionDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['displayProperties'] = this.displayProperties != null? this.displayProperties.toMap() : null;
			data['progressionHash'] = this.progressionHash;
			data['tokenValues'] = this.tokenValues != null? this.tokenValues.map((i, v)=>MapEntry(i, v)) : null;
			data['rewardItemHash'] = this.rewardItemHash;
			data['rewardVendorHash'] = this.rewardVendorHash;
			data['vendors'] = this.vendors != null? this.vendors.map((item)=>item.toMap()).toList() : null;
			data['hash'] = this.hash;
			data['index'] = this.index;
			data['redacted'] = this.redacted;
		return data;
	}
}