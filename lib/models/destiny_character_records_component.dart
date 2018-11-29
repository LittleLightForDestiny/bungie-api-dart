import 'destiny_record_component.dart';
class DestinyCharacterRecordsComponent{
	List<int> featuredRecordHashes;
	Map<DestinyRecordComponent, dynamic> records;
	DestinyCharacterRecordsComponent(
		List<int> this.featuredRecordHashes,
		Map<DestinyRecordComponent, dynamic> this.records,
	);

	static DestinyCharacterRecordsComponent fromJson(Map<String, dynamic> data){
		return new DestinyCharacterRecordsComponent(
				data['featuredRecordHashes'],
				data['records'],
		);
	}

	static List<DestinyCharacterRecordsComponent> fromList(List<dynamic> data){
		List<DestinyCharacterRecordsComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyCharacterRecordsComponent.fromJson(item));
    });
    return list;
	}
}