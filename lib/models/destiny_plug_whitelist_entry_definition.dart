
/* Defines a plug "Category" that is allowed to be plugged into a socket of this type.
This should be compared against a given plug item's DestinyInventoryItemDefinition.plug.plugCategoryHash, which indicates the plug item's category. */
class DestinyPlugWhitelistEntryDefinition{
	
	/* The hash identifier of the Plug Category to compare against the plug item's plug.plugCategoryHash.
Note that this does NOT relate to any Definition in itself, it is only used for comparison purposes. */
	int categoryHash;
	
	/* The string identifier for the category, which is here mostly for debug purposes. */
	String categoryIdentifier;
	
	/* The list of all plug items (DestinyInventoryItemDefinition) that the socket may randomly be populated with when reinitialized.
Which ones you should actually show are determined by the plug being inserted into the socket, and the socket’s type.
When you inspect the plug that could go into a Masterwork Socket, look up the socket type of the socket being inspected and find the DestinySocketTypeDefinition.
Then, look at the Plugs that can fit in that socket. Find the Whitelist in the DestinySocketTypeDefinition that matches the plug item’s categoryhash.
That whitelist entry will potentially have a new “reinitializationPossiblePlugHashes” property.If it does, that means we know what it will roll if you try to insert this plug into this socket. */
	List<int> reinitializationPossiblePlugHashes;
	DestinyPlugWhitelistEntryDefinition(
		this.categoryHash,
		this.categoryIdentifier,
		this.reinitializationPossiblePlugHashes,
	);

	static DestinyPlugWhitelistEntryDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyPlugWhitelistEntryDefinition(
				data['categoryHash'],
				data['categoryIdentifier'],
				data['reinitializationPossiblePlugHashes'] != null ? data['reinitializationPossiblePlugHashes']?.cast<int>() ?? null : null,
		);
	}

	static List<DestinyPlugWhitelistEntryDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyPlugWhitelistEntryDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyPlugWhitelistEntryDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['categoryHash'] = this.categoryHash;
			data['categoryIdentifier'] = this.categoryIdentifier;
			data['reinitializationPossiblePlugHashes'] = this.reinitializationPossiblePlugHashes;
		return data;
	}
}