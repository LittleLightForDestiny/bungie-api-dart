
/** Some items are "sacks" - they can be "opened" to produce other items. This is information related to its sack status, mostly UI strings. Engrams are an example of items that are considered to be "Sacks". */
class DestinyItemSackBlockDefinition{
	
	/** A description of what will happen when you open the sack. As far as I can tell, this is blank currently. Unknown whether it will eventually be populated with useful info. */
	String detailAction;
	
	/** The localized name of the action being performed when you open the sack. */
	String openAction;
	
	/**  */
	int selectItemCount;
	
	/**  */
	String vendorSackType;
	
	/**  */
	bool openOnAcquire;
	DestinyItemSackBlockDefinition(
		this.detailAction,
		this.openAction,
		this.selectItemCount,
		this.vendorSackType,
		this.openOnAcquire,
	);

	static DestinyItemSackBlockDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemSackBlockDefinition(
				data['detailAction'],
				data['openAction'],
				data['selectItemCount'],
				data['vendorSackType'],
				data['openOnAcquire'],
		);
	}

	static List<DestinyItemSackBlockDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemSackBlockDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyItemSackBlockDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['detailAction'] = this.detailAction;
			data['openAction'] = this.openAction;
			data['selectItemCount'] = this.selectItemCount;
			data['vendorSackType'] = this.vendorSackType;
			data['openOnAcquire'] = this.openOnAcquire;
		return data;
	}
}