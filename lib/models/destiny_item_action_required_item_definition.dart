
/** The definition of an item and quantity required in a character's inventory in order to perform an action. */
class DestinyItemActionRequiredItemDefinition{
	
	/** The minimum quantity of the item you have to have. */
	int count;
	
	/** The hash identifier of the item you need to have. Use it to look up the DestinyInventoryItemDefinition for more info. */
	int itemHash;
	
	/** If true, the item/quantity will be deleted from your inventory when the action is performed. Otherwise, you'll retain these required items after the action is complete. */
	bool deleteOnAction;
	DestinyItemActionRequiredItemDefinition(
		this.count,
		this.itemHash,
		this.deleteOnAction,
	);

	static DestinyItemActionRequiredItemDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemActionRequiredItemDefinition(
				data['count'],
				data['itemHash'],
				data['deleteOnAction'],
		);
	}

	static List<DestinyItemActionRequiredItemDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemActionRequiredItemDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyItemActionRequiredItemDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['count'] = this.count;
			data['itemHash'] = this.itemHash;
			data['deleteOnAction'] = this.deleteOnAction;
		return data;
	}
}