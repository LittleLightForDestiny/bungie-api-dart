import 'dye_reference.dart';

/* Bare minimum summary information for an item, for the sake of 3D rendering the item. */
class DestinyItemPeerView{
	
	/* The hash identifier of the item in question. Use it to look up the DestinyInventoryItemDefinition of the item for static rendering data. */
	int itemHash;
	
	/* The list of dyes that have been applied to this item. */
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