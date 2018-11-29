import 'destiny_item_objectives_component.dart';
class DictionaryComponentResponseOfint32AndDestinyItemObjectivesComponent{
	Map<DestinyItemObjectivesComponent, dynamic> data;
	int privacy;
	DictionaryComponentResponseOfint32AndDestinyItemObjectivesComponent(
		Map<DestinyItemObjectivesComponent, dynamic> this.data,
		int this.privacy,
	);

	static DictionaryComponentResponseOfint32AndDestinyItemObjectivesComponent fromJson(Map<String, dynamic> data){
		return new DictionaryComponentResponseOfint32AndDestinyItemObjectivesComponent(
				data['data'],
				data['privacy'],
		);
	}

	static List<DictionaryComponentResponseOfint32AndDestinyItemObjectivesComponent> fromList(List<dynamic> data){
		List<DictionaryComponentResponseOfint32AndDestinyItemObjectivesComponent> list = new List();
    data.forEach((item) {
      list.add(DictionaryComponentResponseOfint32AndDestinyItemObjectivesComponent.fromJson(item));
    });
    return list;
	}
}