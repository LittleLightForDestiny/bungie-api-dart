import 'single_component_response_of_destiny_collectibles_component.dart';
import 'destiny_item_component_set_ofuint32.dart';
class DestinyCollectibleNodeDetailResponse{
	SingleComponentResponseOfDestinyCollectiblesComponent collectibles;
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