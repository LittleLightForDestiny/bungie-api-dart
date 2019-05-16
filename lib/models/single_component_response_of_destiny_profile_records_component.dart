import 'destiny_profile_records_component.dart';

/**  */
class SingleComponentResponseOfDestinyProfileRecordsComponent{
	
	/**  */
	DestinyProfileRecordsComponent data;
	
	/**  */
	int privacy;
	SingleComponentResponseOfDestinyProfileRecordsComponent(
		this.data,
		this.privacy,
	);

	static SingleComponentResponseOfDestinyProfileRecordsComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SingleComponentResponseOfDestinyProfileRecordsComponent(
				data['data'] != null ? DestinyProfileRecordsComponent.fromMap(data['data']) : null,
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
			data['data'] = this.data != null? this.data.toMap() : null;
			data['privacy'] = this.privacy;
		return data;
	}
}