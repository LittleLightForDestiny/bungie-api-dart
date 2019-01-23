import 'destiny_record_component.dart';

/**  */
class DestinyRecordsComponent{
	
	/**  */
	Map<String, DestinyRecordComponent> records;
	DestinyRecordsComponent(
		this.records,
	);

	static DestinyRecordsComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyRecordsComponent(
				data['records'] != null ? Map<String, DestinyRecordComponent>.from(data['records'].map((k, v)=>MapEntry(k, DestinyRecordComponent.fromMap(v)))) : null,
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
			data['records'] = this.records != null? this.records.map((i, v)=>MapEntry(i, v.toMap())) : null;
		return data;
	}
}