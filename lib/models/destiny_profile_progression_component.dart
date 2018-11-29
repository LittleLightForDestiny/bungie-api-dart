class DestinyProfileProgressionComponent{
	Map<Map<bool, dynamic>, dynamic> checklists;
	DestinyProfileProgressionComponent(
		Map<Map<bool, dynamic>, dynamic> this.checklists,
	);

	static DestinyProfileProgressionComponent fromJson(Map<String, dynamic> data){
		return new DestinyProfileProgressionComponent(
				data['checklists'],
		);
	}

	static List<DestinyProfileProgressionComponent> fromList(List<dynamic> data){
		List<DestinyProfileProgressionComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyProfileProgressionComponent.fromJson(item));
    });
    return list;
	}
}