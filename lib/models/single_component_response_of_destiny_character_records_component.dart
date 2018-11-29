import 'destiny_character_records_component.dart';
class SingleComponentResponseOfDestinyCharacterRecordsComponent{
	DestinyCharacterRecordsComponent data;
	int privacy;
	SingleComponentResponseOfDestinyCharacterRecordsComponent(
		DestinyCharacterRecordsComponent this.data,
		int this.privacy,
	);

	static SingleComponentResponseOfDestinyCharacterRecordsComponent fromJson(Map<String, dynamic> data){
		return new SingleComponentResponseOfDestinyCharacterRecordsComponent(
				DestinyCharacterRecordsComponent.fromJson(data['data']),
				data['privacy'],
		);
	}

	static List<SingleComponentResponseOfDestinyCharacterRecordsComponent> fromList(List<dynamic> data){
		List<SingleComponentResponseOfDestinyCharacterRecordsComponent> list = new List();
    data.forEach((item) {
      list.add(SingleComponentResponseOfDestinyCharacterRecordsComponent.fromJson(item));
    });
    return list;
	}
}