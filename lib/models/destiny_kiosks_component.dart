import 'destiny_kiosk_item.dart';
class DestinyKiosksComponent{
	Map<List<DestinyKioskItem>, dynamic> kioskItems;
	DestinyKiosksComponent(
		Map<List<DestinyKioskItem>, dynamic> this.kioskItems,
	);

	static DestinyKiosksComponent fromJson(Map<String, dynamic> data){
		return new DestinyKiosksComponent(
				data['kioskItems'],
		);
	}

	static List<DestinyKiosksComponent> fromList(List<dynamic> data){
		List<DestinyKiosksComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyKiosksComponent.fromJson(item));
    });
    return list;
	}
}