class DestinyItemRenderComponent{
	bool useCustomDyes;
	Map<int, dynamic> artRegions;
	DestinyItemRenderComponent(
		bool this.useCustomDyes,
		Map<int, dynamic> this.artRegions,
	);

	static DestinyItemRenderComponent fromJson(Map<String, dynamic> data){
		return new DestinyItemRenderComponent(
				data['useCustomDyes'],
				data['artRegions'],
		);
	}

	static List<DestinyItemRenderComponent> fromList(List<dynamic> data){
		List<DestinyItemRenderComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyItemRenderComponent.fromJson(item));
    });
    return list;
	}
}