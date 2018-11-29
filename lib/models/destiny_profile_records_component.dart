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

	static DestinyProfileRecordsComponent fromJson(Map<String, dynamic> data){
		return new DestinyProfileRecordsComponent(
				data['score'],
				data['trackedRecordHash'],
				data['records'],
		);
	}

	static List<DestinyProfileRecordsComponent> fromList(List<dynamic> data){
		List<DestinyProfileRecordsComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyProfileRecordsComponent.fromJson(item));
    });
    return list;
	}
}