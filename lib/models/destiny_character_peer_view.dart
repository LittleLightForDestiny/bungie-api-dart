import 'destiny_item_peer_view.dart';
class DestinyCharacterPeerView{
	List<DestinyItemPeerView> equipment;
	DestinyCharacterPeerView(
		List<DestinyItemPeerView> this.equipment,
	);

	static DestinyCharacterPeerView fromJson(Map<String, dynamic> data){
		return new DestinyCharacterPeerView(
				DestinyItemPeerView.fromList(data['equipment']),
		);
	}

	static List<DestinyCharacterPeerView> fromList(List<dynamic> data){
		List<DestinyCharacterPeerView> list = new List();
    data.forEach((item) {
      list.add(DestinyCharacterPeerView.fromJson(item));
    });
    return list;
	}
}