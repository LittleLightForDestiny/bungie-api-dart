import 'destiny_kiosk_item.dart';
class DestinyKiosksComponent{
	Map<String, List<DestinyKioskItem>> kioskItems;
	DestinyKiosksComponent(
		this.kioskItems,
	);

	static DestinyKiosksComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyKiosksComponent(
				data['kioskItems'] != null ? Map<String, List<DestinyKioskItem>>.from(data['kioskItems'].map((k, v)=>MapEntry(k, DestinyKioskItem.fromList(v)))) : null,
		);
	}

	static List<DestinyKiosksComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyKiosksComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyKiosksComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['kioskItems'] = this.kioskItems;
		return data;
	}
}