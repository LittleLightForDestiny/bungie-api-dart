import 'dye_reference.dart';
class DestinyItemPeerView{
	int itemHash;
	List<DyeReference> dyes;
	DestinyItemPeerView(
		this.itemHash,
		this.dyes,
	);

	static DestinyItemPeerView fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemPeerView(
				data['itemHash'],
				data['dyes'] != null ? DyeReference.fromList(data['dyes']) : null,
		);
	}

	static List<DestinyItemPeerView> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemPeerView> list = new List();
    data.forEach((item) {
      list.add(DestinyItemPeerView.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['itemHash'] = this.itemHash;
			data['dyes'] = this.dyes.map((item)=>item.toMap()).toList();
		return data;
	}
}