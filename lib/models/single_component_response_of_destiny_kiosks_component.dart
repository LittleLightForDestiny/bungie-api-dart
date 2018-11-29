import 'destiny_kiosks_component.dart';
class SingleComponentResponseOfDestinyKiosksComponent{
	DestinyKiosksComponent data;
	int privacy;
	SingleComponentResponseOfDestinyKiosksComponent(
		DestinyKiosksComponent this.data,
		int this.privacy,
	);

	static SingleComponentResponseOfDestinyKiosksComponent fromJson(Map<String, dynamic> data){
		return new SingleComponentResponseOfDestinyKiosksComponent(
				DestinyKiosksComponent.fromJson(data['data']),
				data['privacy'],
		);
	}

	static List<SingleComponentResponseOfDestinyKiosksComponent> fromList(List<dynamic> data){
		List<SingleComponentResponseOfDestinyKiosksComponent> list = new List();
    data.forEach((item) {
      list.add(SingleComponentResponseOfDestinyKiosksComponent.fromJson(item));
    });
    return list;
	}
}