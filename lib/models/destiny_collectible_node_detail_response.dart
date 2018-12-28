import 'single_component_response_of_destiny_collectibles_component.dart';
import 'destiny_item_component_set_ofuint32.dart';

/** Returns the detailed information about a Collectible Presentation Node and any Collectibles that are direct descendants. */
class DestinyCollectibleNodeDetailResponse{
	
	/** COMPONENT TYPE: Collectibles */
	SingleComponentResponseOfDestinyCollectiblesComponent collectibles;
	
	/** Item components, keyed by the item hash of the items pointed at collectibles found under the requested Presentation Node.
NOTE: I had a lot of hemming and hawing about whether these should be keyed by collectible hash or item hash... but ultimately having it be keyed by item hash meant that UI that already uses DestinyItemComponentSet data wouldn't have to have a special override to do the collectible -> item lookup once you delve into an item's details, and it also meant that you didn't have to remember that the Hash being used as the key for plugSets was different from the Hash being used for the other Dictionaries. As a result, using the Item Hash felt like the least crappy solution.
We may all come to regret this decision. We will see.
COMPONENT TYPE: [See inside the DestinyItemComponentSet contract for component types.] */
	DestinyItemComponentSetOfuint32 collectibleItemComponents;
	DestinyCollectibleNodeDetailResponse(
		this.collectibles,
		this.collectibleItemComponents,
	);

	static DestinyCollectibleNodeDetailResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyCollectibleNodeDetailResponse(
				data['collectibles'] != null ? SingleComponentResponseOfDestinyCollectiblesComponent.fromMap(data['collectibles']) : null,
				data['collectibleItemComponents'] != null ? DestinyItemComponentSetOfuint32.fromMap(data['collectibleItemComponents']) : null,
		);
	}

	static List<DestinyCollectibleNodeDetailResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyCollectibleNodeDetailResponse> list = new List();
    data.forEach((item) {
      list.add(DestinyCollectibleNodeDetailResponse.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['collectibles'] = this.collectibles;
			data['collectibleItemComponents'] = this.collectibleItemComponents;
		return data;
	}
}