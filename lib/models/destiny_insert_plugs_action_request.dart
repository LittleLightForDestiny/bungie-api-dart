import 'destiny_insert_plugs_request_entry.dart';
class DestinyInsertPlugsActionRequest{
	String actionToken;
	int itemInstanceId;
	DestinyInsertPlugsRequestEntry plug;
	int characterId;
	int membershipType;
	DestinyInsertPlugsActionRequest(
		String this.actionToken,
		int this.itemInstanceId,
		DestinyInsertPlugsRequestEntry this.plug,
		int this.characterId,
		int this.membershipType,
	);

	static DestinyInsertPlugsActionRequest fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyInsertPlugsActionRequest(
				data['actionToken'],
				data['itemInstanceId'],
				data['plug'],
				data['characterId'],
				data['membershipType'],
		);
	}

	static List<DestinyInsertPlugsActionRequest> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyInsertPlugsActionRequest> list = new List();
    data.forEach((item) {
      list.add(DestinyInsertPlugsActionRequest.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['actionToken'] = actionToken;
			data['itemInstanceId'] = itemInstanceId;
			data['plug'] = plug;
			data['characterId'] = characterId;
			data['membershipType'] = membershipType;
	}
}