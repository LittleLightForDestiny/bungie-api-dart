import 'destiny_character_records_component.dart';

/**  */
class SingleComponentResponseOfDestinyCharacterRecordsComponent{
	
	/**  */
	DestinyCharacterRecordsComponent data;
	
	/** A set of flags for reason(s) why the component populated in the way that it did. Inspect the individual flags for the reasons. */
	int privacy;
	SingleComponentResponseOfDestinyCharacterRecordsComponent(
		this.data,
		this.privacy,
	);

	static SingleComponentResponseOfDestinyCharacterRecordsComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SingleComponentResponseOfDestinyCharacterRecordsComponent(
				data['data'] != null ? DestinyCharacterRecordsComponent.fromMap(data['data']) : null,
				data['privacy'],
		);
	}

	static List<SingleComponentResponseOfDestinyCharacterRecordsComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<SingleComponentResponseOfDestinyCharacterRecordsComponent> list = new List();
    data.forEach((item) {
      list.add(SingleComponentResponseOfDestinyCharacterRecordsComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['data'] = this.data.toMap();
			data['privacy'] = this.privacy;
		return data;
	}
}