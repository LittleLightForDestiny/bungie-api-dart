class DestinyProfileProgressionComponent{
	Map<Map<bool, dynamic>, dynamic> checklists;
	DestinyProfileProgressionComponent(
		Map<Map<bool, dynamic>, dynamic> this.checklists,
	);

	static DestinyProfileProgressionComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyProfileProgressionComponent(
				data['checklists'],
		);
	}

	static List<DestinyProfileProgressionComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyProfileProgressionComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyProfileProgressionComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['checklists'] = this.checklists;
		return data;
	}
}