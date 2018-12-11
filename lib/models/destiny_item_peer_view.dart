import 'dye_reference.dart';
class DestinyItemPeerView{
	int itemHash;
	List<DyeReference> dyes;
	DestinyItemPeerView(
		int this.itemHash,
		List<DyeReference> this.dyes,
	);

	static DestinyItemPeerView fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemPeerView(
				data['itemHash'],
				DyeReference.fromList(data['dyes']),
		);
	}

	static List<DestinyItemPeerView> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemPeerView> list = new List();
    data.forEach((item) {
      list.add(DestinyItemPeerView.fromJson(item));
    });
    return list;
	}
}