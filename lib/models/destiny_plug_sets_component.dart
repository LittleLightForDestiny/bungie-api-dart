import 'destiny_item_plug.dart';
class DestinyPlugSetsComponent{
	Map<List<DestinyItemPlug>, dynamic> plugs;
	DestinyPlugSetsComponent(
		Map<List<DestinyItemPlug>, dynamic> this.plugs,
	);

	static DestinyPlugSetsComponent fromJson(Map<String, dynamic> data){
		return new DestinyPlugSetsComponent(
				data['plugs'],
		);
	}

	static List<DestinyPlugSetsComponent> fromList(List<dynamic> data){
		List<DestinyPlugSetsComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyPlugSetsComponent.fromJson(item));
    });
    return list;
	}
}