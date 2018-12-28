
/* Represents all of the data related to a single plug to be inserted.
Note that, while you *can* point to a socket that represents infusion, you will receive an error if you attempt to do so. Come on guys, let's play nice. */
class DestinyInsertPlugsRequestEntry{
	
	/* The index into the socket array, which identifies the specific socket being operated on. We also need to know the socketArrayType in order to uniquely identify the socket.
Don't point to or try to insert a plug into an infusion socket. It won't work. */
	int socketIndex;
	
	/* This property, combined with the socketIndex, tells us which socket we are referring to (since operations can be performed on both Intrinsic and "default" sockets, and they occupy different arrays in the Inventory Item Definition). I know, I know. Don't give me that look. */
	int socketArrayType;
	
	/* Plugs are never instanced (except in infusion). So with the hash alone, we should be able to: 1) Infer whether the player actually needs to have the item, or if it's a reusable plug 2) Perform any operation needed to use the Plug, including removing the plug item and running reward sheets. */
	int plugItemHash;
	DestinyInsertPlugsRequestEntry(
		this.socketIndex,
		this.socketArrayType,
		this.plugItemHash,
	);

	static DestinyInsertPlugsRequestEntry fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyInsertPlugsRequestEntry(
				data['socketIndex'],
				data['socketArrayType'],
				data['plugItemHash'],
		);
	}

	static List<DestinyInsertPlugsRequestEntry> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyInsertPlugsRequestEntry> list = new List();
    data.forEach((item) {
      list.add(DestinyInsertPlugsRequestEntry.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['socketIndex'] = this.socketIndex;
			data['socketArrayType'] = this.socketArrayType;
			data['plugItemHash'] = this.plugItemHash;
		return data;
	}
}