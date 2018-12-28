import 'destiny_item_plug.dart';

/* Sockets may refer to a "Plug Set": a set of reusable plugs that may be shared across multiple sockets (or even, in theory, multiple sockets over multiple items).
This is the set of those plugs that we came across in the users' inventory, along with the values for plugs in the set. Any given set in this component may be represented in Character and Profile-level, as some plugs may be Profile-level restricted, and some character-level restricted. (note that the ones that are even more specific will remain on the actual socket component itself, as they cannot be reused) */
class DestinyPlugSetsComponent{
	
	/* The shared list of plugs for each relevant PlugSet, keyed by the hash identifier of the PlugSet (DestinyPlugSetDefinition). */
	Map<String, List<DestinyItemPlug>> plugs;
	DestinyPlugSetsComponent(
		this.plugs,
	);

	static DestinyPlugSetsComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyPlugSetsComponent(
				data['plugs'] != null ? Map<String, List<DestinyItemPlug>>.from(data['plugs'].map((k, v)=>MapEntry(k, DestinyItemPlug.fromList(v)))) : null,
		);
	}

	static List<DestinyPlugSetsComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyPlugSetsComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyPlugSetsComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['plugs'] = this.plugs;
		return data;
	}
}