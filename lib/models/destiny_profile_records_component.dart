import 'destiny_record_component.dart';
class DestinyProfileRecordsComponent{
	int score;
	int trackedRecordHash;
	Map<DestinyRecordComponent, dynamic> records;
	DestinyProfileRecordsComponent(
		int this.score,
		int this.trackedRecordHash,
		Map<DestinyRecordComponent, dynamic> this.records,
	);

	static DestinyProfileRecordsComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyProfileRecordsComponent(
				data['score'],
				data['trackedRecordHash'],
				data['records'],
		);
	}

	static List<DestinyProfileRecordsComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyProfileRecordsComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyProfileRecordsComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['score'] = score;
			data['trackedRecordHash'] = trackedRecordHash;
			data['records'] = records;
	}
}