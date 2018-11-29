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

	static DestinyInsertPlugsActionRequest fromJson(Map<String, dynamic> data){
		return new DestinyInsertPlugsActionRequest(
				data['actionToken'],
				data['itemInstanceId'],
				data['plug'],
				data['characterId'],
				data['membershipType'],
		);
	}

	static List<DestinyInsertPlugsActionRequest> fromList(List<dynamic> data){
		List<DestinyInsertPlugsActionRequest> list = new List();
    data.forEach((item) {
      list.add(DestinyInsertPlugsActionRequest.fromJson(item));
    });
    return list;
	}
}