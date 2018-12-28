import 'destiny_record_component.dart';

/*  */
class DestinyCharacterRecordsComponent{
	
	/*  */
	List<int> featuredRecordHashes;
	
	/*  */
	Map<String, DestinyRecordComponent> records;
	DestinyCharacterRecordsComponent(
		this.featuredRecordHashes,
		this.records,
	);

	static DestinyCharacterRecordsComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyCharacterRecordsComponent(
				data['featuredRecordHashes'] != null ? data['featuredRecordHashes']?.cast<int>() ?? null : null,
				data['records'] != null ? Map<String, DestinyRecordComponent>.from(data['records'].map((k, v)=>MapEntry(k, DestinyRecordComponent.fromMap(v)))) : null,
		);
	}

	static List<DestinyCharacterRecordsComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyCharacterRecordsComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyCharacterRecordsComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['featuredRecordHashes'] = this.featuredRecordHashes;
			data['records'] = this.records;
		return data;
	}
}