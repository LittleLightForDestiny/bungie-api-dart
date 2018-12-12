import 'destiny_record_component.dart';
class DestinyRecordsComponent{
	Map<DestinyRecordComponent, dynamic> records;
	DestinyRecordsComponent(
		Map<DestinyRecordComponent, dynamic> this.records,
	);

	static DestinyRecordsComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyRecordsComponent(
				data['records'],
		);
	}

	static List<DestinyRecordsComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyRecordsComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyRecordsComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['records'] = records;
	}
}