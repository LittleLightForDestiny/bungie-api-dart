import 'destiny_collectible_component.dart';
class DestinyCollectiblesComponent{
	Map<DestinyCollectibleComponent, dynamic> collectibles;
	DestinyCollectiblesComponent(
		Map<DestinyCollectibleComponent, dynamic> this.collectibles,
	);

	static DestinyCollectiblesComponent fromJson(Map<String, dynamic> data){
		return new DestinyCollectiblesComponent(
				data['collectibles'],
		);
	}

	static List<DestinyCollectiblesComponent> fromList(List<dynamic> data){
		List<DestinyCollectiblesComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyCollectiblesComponent.fromJson(item));
    });
    return list;
	}
}