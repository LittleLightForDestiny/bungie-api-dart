class DestinyProfileProgressionComponent{
	Map<Map<bool, dynamic>, dynamic> checklists;
	DestinyProfileProgressionComponent(
		Map<Map<bool, dynamic>, dynamic> this.checklists,
	);

	static DestinyProfileProgressionComponent fromJson(Map<String, dynamic> data){
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
      list.add(DestinyProfileProgressionComponent.fromJson(item));
    });
    return list;
	}
}