
/* Sockets are grouped into categories in the UI. These define which category and which sockets are under that category. */
class DestinyItemSocketCategoryDefinition{
	
	/* The hash for the Socket Category: a quick way to go get the header display information for the category. Use it to look up DestinySocketCategoryDefinition info. */
	int socketCategoryHash;
	
	/* Use these indexes to look up the sockets in the "sockets.socketEntries" property on the item definition. These are the indexes under the category, in game-rendered order. */
	List<int> socketIndexes;
	DestinyItemSocketCategoryDefinition(
		this.socketCategoryHash,
		this.socketIndexes,
	);

	static DestinyItemSocketCategoryDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemSocketCategoryDefinition(
				data['socketCategoryHash'],
				data['socketIndexes'] != null ? data['socketIndexes']?.cast<int>() ?? null : null,
		);
	}

	static List<DestinyItemSocketCategoryDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemSocketCategoryDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyItemSocketCategoryDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['socketCategoryHash'] = this.socketCategoryHash;
			data['socketIndexes'] = this.socketIndexes;
		return data;
	}
}