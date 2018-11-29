import 'destiny_collectibles_component.dart';
class SingleComponentResponseOfDestinyCollectiblesComponent{
	DestinyCollectiblesComponent data;
	int privacy;
	SingleComponentResponseOfDestinyCollectiblesComponent(
		DestinyCollectiblesComponent this.data,
		int this.privacy,
	);

	static SingleComponentResponseOfDestinyCollectiblesComponent fromJson(Map<String, dynamic> data){
		return new SingleComponentResponseOfDestinyCollectiblesComponent(
				DestinyCollectiblesComponent.fromJson(data['data']),
				data['privacy'],
		);
	}

	static List<SingleComponentResponseOfDestinyCollectiblesComponent> fromList(List<dynamic> data){
		List<SingleComponentResponseOfDestinyCollectiblesComponent> list = new List();
    data.forEach((item) {
      list.add(SingleComponentResponseOfDestinyCollectiblesComponent.fromJson(item));
    });
    return list;
	}
}