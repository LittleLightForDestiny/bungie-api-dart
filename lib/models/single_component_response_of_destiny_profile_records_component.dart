import 'destiny_profile_records_component.dart';
class SingleComponentResponseOfDestinyProfileRecordsComponent{
	DestinyProfileRecordsComponent data;
	int privacy;
	SingleComponentResponseOfDestinyProfileRecordsComponent(
		DestinyProfileRecordsComponent this.data,
		int this.privacy,
	);

	static SingleComponentResponseOfDestinyProfileRecordsComponent fromJson(Map<String, dynamic> data){
		return new SingleComponentResponseOfDestinyProfileRecordsComponent(
				DestinyProfileRecordsComponent.fromJson(data['data']),
				data['privacy'],
		);
	}

	static List<SingleComponentResponseOfDestinyProfileRecordsComponent> fromList(List<dynamic> data){
		List<SingleComponentResponseOfDestinyProfileRecordsComponent> list = new List();
    data.forEach((item) {
      list.add(SingleComponentResponseOfDestinyProfileRecordsComponent.fromJson(item));
    });
    return list;
	}
}