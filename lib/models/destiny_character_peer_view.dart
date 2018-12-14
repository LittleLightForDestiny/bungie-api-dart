import 'destiny_item_peer_view.dart';
class DestinyCharacterPeerView{
	List<DestinyItemPeerView> equipment;
	DestinyCharacterPeerView(
		this.equipment,
	);

	static DestinyCharacterPeerView fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyCharacterPeerView(
				data['equipment'] != null ? DestinyItemPeerView.fromList(data['equipment']) : null,
		);
	}

	static List<DestinyCharacterPeerView> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyCharacterPeerView> list = new List();
    data.forEach((item) {
      list.add(DestinyCharacterPeerView.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['equipment'] = this.equipment.map((item)=>item.toMap()).toList();
		return data;
	}
}