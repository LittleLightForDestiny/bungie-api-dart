import 'destiny_collectible_component.dart';

/**  */
class DestinyProfileCollectiblesComponent{
	
	/** The list of collectibles determined by the game as having been "recently" acquired. */
	List<int> recentCollectibleHashes;
	
	/** The list of collectibles determined by the game as having been "recently" acquired.
The game client itself actually controls this data, so I personally question whether anyone will get much use out of this: because we can't edit this value through the API. But in case anyone finds it useful, here it is. */
	List<int> newnessFlaggedCollectibleHashes;
	
	/**  */
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
			data['collectibles'] = this.collectibles != null? this.collectibles.map((i, v)=>MapEntry(i, v.toMap())) : null;
		return data;
	}
}