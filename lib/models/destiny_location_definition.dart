import 'destiny_location_release_definition.dart';

/* A "Location" is a sort of shortcut for referring to a specific combination of Activity, Destination, Place, and even Bubble or NavPoint within a space.
Most of this data isn't intrinsically useful to us, but Objectives refer to locations, and through that we can at least infer the Activity, Destination, and Place being referred to by the Objective. */
class DestinyLocationDefinition{
	
	/* If the location has a Vendor on it, this is the hash identifier for that Vendor. Look them up with DestinyVendorDefinition. */
	int vendorHash;
	
	/* A Location may refer to different specific spots in the world based on the world's current state. This is a list of those potential spots, and the data we can use at runtime to determine which one of the spots is the currently valid one. */
	List<DestinyLocationReleaseDefinition> locationReleases;
	
	/* The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
When entities refer to each other in Destiny content, it is this hash that they are referring to. */
	int hash;
	
	/* The index of the entity as it was found in the investment tables. */
	int index;
	
	/* If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! */
	bool redacted;
	DestinyLocationDefinition(
		this.vendorHash,
		this.locationReleases,
		this.hash,
		this.index,
		this.redacted,
	);

	static DestinyLocationDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyLocationDefinition(
				data['vendorHash'],
				data['locationReleases'] != null ? DestinyLocationReleaseDefinition.fromList(data['locationReleases']) : null,
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyLocationDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyLocationDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyLocationDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['vendorHash'] = this.vendorHash;
			data['locationReleases'] = this.locationReleases.map((item)=>item.toMap()).toList();
			data['hash'] = this.hash;
			data['index'] = this.index;
			data['redacted'] = this.redacted;
		return data;
	}
}