import 'destiny_profile_records_component.dart';
class SingleComponentResponseOfDestinyProfileRecordsComponent{
	DestinyProfileRecordsComponent data;
	int privacy;
	SingleComponentResponseOfDestinyProfileRecordsComponent(
		DestinyProfileRecordsComponent this.data,
		int this.privacy,
	);

	static SingleComponentResponseOfDestinyProfileRecordsComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SingleComponentResponseOfDestinyProfileRecordsComponent(
				DestinyProfileRecordsComponent.fromMap(data['data']),
				data['privacy'],
		);
	}

	static List<SingleComponentResponseOfDestinyProfileRecordsComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<SingleComponentResponseOfDestinyProfileRecordsComponent> list = new List();
    data.forEach((item) {
      list.add(SingleComponentResponseOfDestinyProfileRecordsComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['data'] = data.toMap();
			data['privacy'] = privacy;
	}
}