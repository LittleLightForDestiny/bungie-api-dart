
/** A reference to an Activity Modifier from another entity, such as an Activity (for now, just Activities).
This defines some */
class DestinyActivityModifierReferenceDefinition{
	
	/** The hash identifier for the DestinyActivityModifierDefinition referenced by this activity. */
	int activityModifierHash;
	DestinyActivityModifierReferenceDefinition(
		this.activityModifierHash,
	);

	static DestinyActivityModifierReferenceDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyActivityModifierReferenceDefinition(
				data['activityModifierHash'],
		);
	}

	static List<DestinyActivityModifierReferenceDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyActivityModifierReferenceDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyActivityModifierReferenceDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['activityModifierHash'] = this.activityModifierHash;
		return data;
	}
}