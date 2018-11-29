class DestinyCollectibleComponent{
	int state;
	DestinyCollectibleComponent(
		int this.state,
	);

	static DestinyCollectibleComponent fromJson(Map<String, dynamic> data){
		return new DestinyCollectibleComponent(
				data['state'],
		);
	}

	static List<DestinyCollectibleComponent> fromList(List<dynamic> data){
		List<DestinyCollectibleComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyCollectibleComponent.fromJson(item));
    });
    return list;
	}
}