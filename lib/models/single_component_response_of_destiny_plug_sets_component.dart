import 'destiny_plug_sets_component.dart';

/**  */
class SingleComponentResponseOfDestinyPlugSetsComponent{
	
	/** Sockets may refer to a "Plug Set": a set of reusable plugs that may be shared across multiple sockets (or even, in theory, multiple sockets over multiple items).
This is the set of those plugs that we came across in the users' inventory, along with the values for plugs in the set. Any given set in this component may be represented in Character and Profile-level, as some plugs may be Profile-level restricted, and some character-level restricted. (note that the ones that are even more specific will remain on the actual socket component itself, as they cannot be reused) */
	DestinyPlugSetsComponent data;
	
	/**  */
	int privacy;
	SingleComponentResponseOfDestinyPlugSetsComponent(
		this.data,
		this.privacy,
	);

	static SingleComponentResponseOfDestinyPlugSetsComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SingleComponentResponseOfDestinyPlugSetsComponent(
				data['data'] != null ? DestinyPlugSetsComponent.fromMap(data['data']) : null,
				data['privacy'],
		);
	}

	static List<SingleComponentResponseOfDestinyPlugSetsComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<SingleComponentResponseOfDestinyPlugSetsComponent> list = new List();
    data.forEach((item) {
      list.add(SingleComponentResponseOfDestinyPlugSetsComponent.fromMap(item));
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