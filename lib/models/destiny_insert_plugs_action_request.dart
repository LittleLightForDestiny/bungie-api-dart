import 'destiny_insert_plugs_request_entry.dart';

/*  */
class DestinyInsertPlugsActionRequest{
	
	/* Action token provided by the AwaGetActionToken API call. */
	String actionToken;
	
	/* The instance ID of the item having a plug inserted. Only instanced items can have sockets. */
	String itemInstanceId;
	
	/* The plugs being inserted. */
	DestinyInsertPlugsRequestEntry plug;
	
	/*  */
	String characterId;
	
	/*  */
	int membershipType;
	DestinyInsertPlugsActionRequest(
		this.actionToken,
		this.itemInstanceId,
		this.plug,
		this.characterId,
		this.membershipType,
	);

	static DestinyInsertPlugsActionRequest fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyInsertPlugsActionRequest(
				data['actionToken'],
				data['itemInstanceId'],
				data['plug'] != null ? DestinyInsertPlugsRequestEntry.fromMap(data['plug']) : null,
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
			data['actionToken'] = this.actionToken;
			data['itemInstanceId'] = this.itemInstanceId;
			data['plug'] = this.plug;
			data['characterId'] = this.characterId;
			data['membershipType'] = this.membershipType;
		return data;
	}
}