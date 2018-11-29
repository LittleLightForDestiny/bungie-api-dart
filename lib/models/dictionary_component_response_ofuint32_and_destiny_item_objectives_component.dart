import 'destiny_item_objectives_component.dart';
class DictionaryComponentResponseOfuint32AndDestinyItemObjectivesComponent{
	Map<DestinyItemObjectivesComponent, dynamic> data;
	int privacy;
	DictionaryComponentResponseOfuint32AndDestinyItemObjectivesComponent(
		Map<DestinyItemObjectivesComponent, dynamic> this.data,
		int this.privacy,
	);

	static DictionaryComponentResponseOfuint32AndDestinyItemObjectivesComponent fromJson(Map<String, dynamic> data){
		return new DictionaryComponentResponseOfuint32AndDestinyItemObjectivesComponent(
				data['data'],
				data['privacy'],
		);
	}

	static List<DictionaryComponentResponseOfuint32AndDestinyItemObjectivesComponent> fromList(List<dynamic> data){
		List<DictionaryComponentResponseOfuint32AndDestinyItemObjectivesComponent> list = new List();
    data.forEach((item) {
      list.add(DictionaryComponentResponseOfuint32AndDestinyItemObjectivesComponent.fromJson(item));
    });
    return list;
	}
}