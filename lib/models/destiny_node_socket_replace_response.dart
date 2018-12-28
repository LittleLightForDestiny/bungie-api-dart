
/** This is a bit of an odd duck. Apparently, if talent nodes steps have this data, the game will go through on step activation and alter the first Socket it finds on the item that has a type matching the given socket type, inserting the indicated plug item. */
class DestinyNodeSocketReplaceResponse{
	
	/** The hash identifier of the socket type to find amidst the item's sockets (the item to which this talent grid is attached). See DestinyInventoryItemDefinition.sockets.socketEntries to find the socket type of sockets on the item in question. */
	int socketTypeHash;
	
	/** The hash identifier of the plug item that will be inserted into the socket found. */
	int plugItemHash;
	DestinyNodeSocketReplaceResponse(
		this.socketTypeHash,
		this.plugItemHash,
	);

	static DestinyNodeSocketReplaceResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyNodeSocketReplaceResponse(
				data['socketTypeHash'],
				data['plugItemHash'],
		);
	}

	static List<DestinyNodeSocketReplaceResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyNodeSocketReplaceResponse> list = new List();
    data.forEach((item) {
      list.add(DestinyNodeSocketReplaceResponse.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['socketTypeHash'] = this.socketTypeHash;
			data['plugItemHash'] = this.plugItemHash;
		return data;
	}
}