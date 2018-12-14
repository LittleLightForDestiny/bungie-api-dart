import 'destiny_collectible_component.dart';
class DestinyProfileCollectiblesComponent{
	List<int> recentCollectibleHashes;
	List<int> newnessFlaggedCollectibleHashes;
	Map<String, DestinyCollectibleComponent> collectibles;
	DestinyProfileCollectiblesComponent(
		this.recentCollectibleHashes,
		this.newnessFlaggedCollectibleHashes,
		this.collectibles,
	);

	static DestinyProfileCollectiblesComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyProfileCollectiblesComponent(
				data['recentCollectibleHashes'] != null ? data['recentCollectibleHashes']?.cast<int>() ?? null : null,
				data['newnessFlaggedCollectibleHashes'] != null ? data['newnessFlaggedCollectibleHashes']?.cast<int>() ?? null : null,
				data['collectibles'] != null ? Map<String, DestinyCollectibleComponent>.from(data['collectibles'].map((k, v)=>MapEntry(k, DestinyCollectibleComponent.fromMap(v)))) : null,
		);
	}

	static List<DestinyProfileCollectiblesComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyProfileCollectiblesComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyProfileCollectiblesComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['recentCollectibleHashes'] = this.recentCollectibleHashes;
			data['newnessFlaggedCollectibleHashes'] = this.newnessFlaggedCollectibleHashes;
			data['collectibles'] = this.collectibles;
		return data;
	}
}