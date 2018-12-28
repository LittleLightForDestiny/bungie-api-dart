
/* Represents a socket that has a plug associated with it intrinsically. This is useful for situations where the weapon needs to have a visual plug/Mod on it, but that plug/Mod should never change. */
class DestinyItemIntrinsicSocketEntryDefinition{
	
	/* Indicates the plug that is intrinsically inserted into this socket. */
	int plugItemHash;
	
	/* Indicates the type of this intrinsic socket. */
	int socketTypeHash;
	
	/* If true, then this socket is visible in the item's "default" state. If you have an instance, you should always check the runtime state, as that can override this visibility setting: but if you're looking at the item on a conceptual level, this property can be useful for hiding data such as legacy sockets - which remain defined on items for infrastructure purposes, but can be confusing for users to see. */
	bool defaultVisible;
	DestinyItemIntrinsicSocketEntryDefinition(
		this.plugItemHash,
		this.socketTypeHash,
		this.defaultVisible,
	);

	static DestinyItemIntrinsicSocketEntryDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemIntrinsicSocketEntryDefinition(
				data['plugItemHash'],
				data['socketTypeHash'],
				data['defaultVisible'],
		);
	}

	static List<DestinyItemIntrinsicSocketEntryDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemIntrinsicSocketEntryDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyItemIntrinsicSocketEntryDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['plugItemHash'] = this.plugItemHash;
			data['socketTypeHash'] = this.socketTypeHash;
			data['defaultVisible'] = this.defaultVisible;
		return data;
	}
}