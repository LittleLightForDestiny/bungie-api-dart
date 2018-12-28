
/** BNet attempts to group vendors into similar collections. These groups aren't technically game canonical, but they are helpful for filtering vendors or showing them organized into a clean view on a webpage or app.
These definitions represent the groups we've built. Unlike in Destiny 1, a Vendors' group may change dynamically as the game state changes: thus, you will want to check DestinyVendorComponent responses to find a vendor's currently active Group (if you care).
Using this will let you group your vendors in your UI in a similar manner to how we will do grouping in the Companion. */
class DestinyVendorGroupDefinition{
	
	/** The recommended order in which to render the groups, Ascending order. */
	int order;
	
	/** For now, a group just has a name. */
	String categoryName;
	
	/** The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
When entities refer to each other in Destiny content, it is this hash that they are referring to. */
	int hash;
	
	/** The index of the entity as it was found in the investment tables. */
	int index;
	
	/** If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! */
	bool redacted;
	DestinyVendorGroupDefinition(
		this.order,
		this.categoryName,
		this.hash,
		this.index,
		this.redacted,
	);

	static DestinyVendorGroupDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyVendorGroupDefinition(
				data['order'],
				data['categoryName'],
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyVendorGroupDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyVendorGroupDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyVendorGroupDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['order'] = this.order;
			data['categoryName'] = this.categoryName;
			data['hash'] = this.hash;
			data['index'] = this.index;
			data['redacted'] = this.redacted;
		return data;
	}
}