
/* Represents a status string that could be conditionally displayed about an activity. Note that externally, you can only see the strings themselves. Internally we combine this information with server state to determine which strings should be shown. */
class DestinyActivityUnlockStringDefinition{
	
	/* The string to be displayed if the conditions are met. */
	String displayString;
	DestinyActivityUnlockStringDefinition(
		this.displayString,
	);

	static DestinyActivityUnlockStringDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyActivityUnlockStringDefinition(
				data['displayString'],
		);
	}

	static List<DestinyActivityUnlockStringDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyActivityUnlockStringDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyActivityUnlockStringDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['displayString'] = this.displayString;
		return data;
	}
}