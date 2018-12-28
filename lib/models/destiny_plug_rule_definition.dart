
/** Dictates a rule around whether the plug is enabled or insertable.
In practice, the live Destiny data will refer to these entries by index. You can then look up that index in the appropriate property (enabledRules or insertionRules) to get the localized string for the failure message if it failed. */
class DestinyPlugRuleDefinition{
	
	/** The localized string to show if this rule fails. */
	String failureMessage;
	DestinyPlugRuleDefinition(
		this.failureMessage,
	);

	static DestinyPlugRuleDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyPlugRuleDefinition(
				data['failureMessage'],
		);
	}

	static List<DestinyPlugRuleDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyPlugRuleDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyPlugRuleDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['failureMessage'] = this.failureMessage;
		return data;
	}
}