class DestinyCollectibleComponent{
	int state;
	DestinyCollectibleComponent(
		int this.state,
	);

	static DestinyCollectibleComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyCollectibleComponent(
				data['state'],
		);
	}

	static List<DestinyCollectibleComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyCollectibleComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyCollectibleComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['state'] = this.state;
		return data;
	}
}