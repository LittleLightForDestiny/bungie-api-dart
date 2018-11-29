import 'destiny_item_objectives_component.dart';
class DictionaryComponentResponseOfint64AndDestinyItemObjectivesComponent{
	Map<DestinyItemObjectivesComponent, dynamic> data;
	int privacy;
	DictionaryComponentResponseOfint64AndDestinyItemObjectivesComponent(
		Map<DestinyItemObjectivesComponent, dynamic> this.data,
		int this.privacy,
	);

	static DictionaryComponentResponseOfint64AndDestinyItemObjectivesComponent fromJson(Map<String, dynamic> data){
		return new DictionaryComponentResponseOfint64AndDestinyItemObjectivesComponent(
				data['data'],
				data['privacy'],
		);
	}

	static List<DictionaryComponentResponseOfint64AndDestinyItemObjectivesComponent> fromList(List<dynamic> data){
		List<DictionaryComponentResponseOfint64AndDestinyItemObjectivesComponent> list = new List();
    data.forEach((item) {
      list.add(DictionaryComponentResponseOfint64AndDestinyItemObjectivesComponent.fromJson(item));
    });
    return list;
	}
}