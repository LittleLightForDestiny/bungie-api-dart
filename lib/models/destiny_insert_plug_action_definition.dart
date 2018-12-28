
/* Data related to what happens while a plug is being inserted, mostly for UI purposes. */
class DestinyInsertPlugActionDefinition{
	
	/* How long it takes for the Plugging of the item to be completed once it is initiated, if you care. */
	int actionExecuteSeconds;
	
	/* The type of action being performed when you act on this Socket Type. The most common value is "insert plug", but there are others as well (for instance, a "Masterwork" socket may allow for Re-initialization, and an Infusion socket allows for items to be consumed to upgrade the item) */
	int actionType;
	DestinyInsertPlugActionDefinition(
		this.actionExecuteSeconds,
		this.actionType,
	);

	static DestinyInsertPlugActionDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyInsertPlugActionDefinition(
				data['actionExecuteSeconds'],
				data['actionType'],
		);
	}

	static List<DestinyInsertPlugActionDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyInsertPlugActionDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyInsertPlugActionDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['actionExecuteSeconds'] = this.actionExecuteSeconds;
			data['actionType'] = this.actionType;
		return data;
	}
}