
/** The definition of a known, reusable plug that can be applied to a socket. */
class DestinyItemSocketEntryPlugItemDefinition{
	
	/** The hash identifier of a DestinyInventoryItemDefinition representing the plug that can be inserted. */
	int plugItemHash;
	DestinyItemSocketEntryPlugItemDefinition(
		this.plugItemHash,
	);

	static DestinyItemSocketEntryPlugItemDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemSocketEntryPlugItemDefinition(
				data['plugItemHash'],
		);
	}

	static List<DestinyItemSocketEntryPlugItemDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemSocketEntryPlugItemDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyItemSocketEntryPlugItemDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['plugItemHash'] = this.plugItemHash;
		return data;
	}
}