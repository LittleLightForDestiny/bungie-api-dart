import 'single_component_response_of_destiny_collectibles_component.dart';
import 'destiny_item_component_set_ofuint32.dart';
class DestinyCollectibleNodeDetailResponse{
	SingleComponentResponseOfDestinyCollectiblesComponent collectibles;
	DestinyItemComponentSetOfuint32 collectibleItemComponents;
	DestinyCollectibleNodeDetailResponse(
		SingleComponentResponseOfDestinyCollectiblesComponent this.collectibles,
		DestinyItemComponentSetOfuint32 this.collectibleItemComponents,
	);

	static DestinyCollectibleNodeDetailResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyCollectibleNodeDetailResponse(
				data['collectibles'],
				data['collectibleItemComponents'],
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
			data['collectibles'] = collectibles;
			data['collectibleItemComponents'] = collectibleItemComponents;
	}
}