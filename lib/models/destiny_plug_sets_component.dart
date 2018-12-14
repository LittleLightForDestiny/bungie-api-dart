import 'destiny_item_plug.dart';
class DestinyPlugSetsComponent{
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