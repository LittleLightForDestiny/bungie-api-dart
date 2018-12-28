import 'destiny_collectible_component.dart';

/**  */
class DestinyCollectiblesComponent{
	
	/**  */
	Map<String, DestinyCollectibleComponent> collectibles;
	DestinyCollectiblesComponent(
		this.collectibles,
	);

	static DestinyCollectiblesComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyCollectiblesComponent(
				data['collectibles'] != null ? Map<String, DestinyCollectibleComponent>.from(data['collectibles'].map((k, v)=>MapEntry(k, DestinyCollectibleComponent.fromMap(v)))) : null,
		);
	}

	static List<DestinyCollectiblesComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyCollectiblesComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyCollectiblesComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['collectibles'] = this.collectibles;
		return data;
	}
}