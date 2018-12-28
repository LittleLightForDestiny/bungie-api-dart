
/** If a vendor can ever end up performing actions, these are the properties that will be related to those actions. I'm not going to bother documenting this yet, as it is unused and unclear if it will ever be used... but in case it is ever populated and someone finds it useful, it is defined here. */
class DestinyVendorActionDefinition{
	
	/**  */
	String description;
	
	/**  */
	int executeSeconds;
	
	/**  */
	String icon;
	
	/**  */
	String name;
	
	/**  */
	String verb;
	
	/**  */
	bool isPositive;
	
	/**  */
	String actionId;
	
	/**  */
	int actionHash;
	
	/**  */
	bool autoPerformAction;
	DestinyVendorActionDefinition(
		this.description,
		this.executeSeconds,
		this.icon,
		this.name,
		this.verb,
		this.isPositive,
		this.actionId,
		this.actionHash,
		this.autoPerformAction,
	);

	static DestinyVendorActionDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyVendorActionDefinition(
				data['description'],
				data['executeSeconds'],
				data['icon'],
				data['name'],
				data['verb'],
				data['isPositive'],
				data['actionId'],
				data['actionHash'],
				data['autoPerformAction'],
		);
	}

	static List<DestinyVendorActionDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyVendorActionDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyVendorActionDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['description'] = this.description;
			data['executeSeconds'] = this.executeSeconds;
			data['icon'] = this.icon;
			data['name'] = this.name;
			data['verb'] = this.verb;
			data['isPositive'] = this.isPositive;
			data['actionId'] = this.actionId;
			data['actionHash'] = this.actionHash;
			data['autoPerformAction'] = this.autoPerformAction;
		return data;
	}
}