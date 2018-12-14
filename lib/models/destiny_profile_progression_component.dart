class DestinyProfileProgressionComponent{
	Map<String, Map<String, bool>> checklists;
	DestinyProfileProgressionComponent(
		this.checklists,
	);

	static DestinyProfileProgressionComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyProfileProgressionComponent(
				data['checklists'] != null ? Map<String, Map<String, bool>>.from(data['checklists'].map((k, v)=>MapEntry(k, Map<String, bool>.from(v.map((k, v)=>MapEntry(k, v)))))) : null,
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