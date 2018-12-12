class DestinyItemRenderComponent{
	bool useCustomDyes;
	Map<int, dynamic> artRegions;
	DestinyItemRenderComponent(
		bool this.useCustomDyes,
		Map<int, dynamic> this.artRegions,
	);

	static DestinyItemRenderComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemRenderComponent(
				data['useCustomDyes'],
				data['artRegions'],
		);
	}

	static List<DestinyItemRenderComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemRenderComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyItemRenderComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['useCustomDyes'] = this.useCustomDyes;
			data['artRegions'] = this.artRegions;
		return data;
	}
}