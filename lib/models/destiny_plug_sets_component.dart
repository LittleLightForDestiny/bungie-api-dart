import 'destiny_item_plug.dart';
class DestinyPlugSetsComponent{
	Map<List<DestinyItemPlug>, dynamic> plugs;
	DestinyPlugSetsComponent(
		Map<List<DestinyItemPlug>, dynamic> this.plugs,
	);

	static DestinyPlugSetsComponent fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyPlugSetsComponent(
				data['plugs'],
		);
	}

	static List<DestinyPlugSetsComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyPlugSetsComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyPlugSetsComponent.fromJson(item));
    });
    return list;
	}
}