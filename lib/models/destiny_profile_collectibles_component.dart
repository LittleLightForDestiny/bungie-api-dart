import 'destiny_collectible_component.dart';
class DestinyProfileCollectiblesComponent{
	List<int> recentCollectibleHashes;
	List<int> newnessFlaggedCollectibleHashes;
	Map<DestinyCollectibleComponent, dynamic> collectibles;
	DestinyProfileCollectiblesComponent(
		List<int> this.recentCollectibleHashes,
		List<int> this.newnessFlaggedCollectibleHashes,
		Map<DestinyCollectibleComponent, dynamic> this.collectibles,
	);

	static DestinyProfileCollectiblesComponent fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyProfileCollectiblesComponent(
				data['recentCollectibleHashes'],
				data['newnessFlaggedCollectibleHashes'],
				data['collectibles'],
		);
	}

	static List<DestinyProfileCollectiblesComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyProfileCollectiblesComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyProfileCollectiblesComponent.fromJson(item));
    });
    return list;
	}
}