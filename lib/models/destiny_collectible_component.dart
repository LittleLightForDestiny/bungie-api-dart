class DestinyCollectibleComponent{
	int state;
	DestinyCollectibleComponent(
		int this.state,
	);

	static DestinyCollectibleComponent fromJson(Map<String, dynamic> data){
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
      list.add(DestinyCollectibleComponent.fromJson(item));
    });
    return list;
	}
}