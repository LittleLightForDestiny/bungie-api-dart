import 'single_component_response_of_destiny_collectibles_component.dart';
import 'destiny_item_component_set_ofuint32.dart';
class DestinyCollectibleNodeDetailResponse{
	SingleComponentResponseOfDestinyCollectiblesComponent collectibles;
	DestinyItemComponentSetOfuint32 collectibleItemComponents;
	DestinyCollectibleNodeDetailResponse(
		SingleComponentResponseOfDestinyCollectiblesComponent this.collectibles,
		DestinyItemComponentSetOfuint32 this.collectibleItemComponents,
	);

	static DestinyCollectibleNodeDetailResponse fromJson(Map<String, dynamic> data){
		return new DestinyCollectibleNodeDetailResponse(
				data['collectibles'],
				data['collectibleItemComponents'],
		);
	}

	static List<DestinyCollectibleNodeDetailResponse> fromList(List<dynamic> data){
		List<DestinyCollectibleNodeDetailResponse> list = new List();
    data.forEach((item) {
      list.add(DestinyCollectibleNodeDetailResponse.fromJson(item));
    });
    return list;
	}
}