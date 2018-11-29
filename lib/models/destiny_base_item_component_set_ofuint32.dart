import 'dictionary_component_response_ofuint32_and_destiny_item_objectives_component.dart';
class DestinyBaseItemComponentSetOfuint32{
	DictionaryComponentResponseOfuint32AndDestinyItemObjectivesComponent objectives;
	DestinyBaseItemComponentSetOfuint32(
		DictionaryComponentResponseOfuint32AndDestinyItemObjectivesComponent this.objectives,
	);

	static DestinyBaseItemComponentSetOfuint32 fromJson(Map<String, dynamic> data){
		return new DestinyBaseItemComponentSetOfuint32(
				DictionaryComponentResponseOfuint32AndDestinyItemObjectivesComponent.fromJson(data['objectives']),
		);
	}

	static List<DestinyBaseItemComponentSetOfuint32> fromList(List<dynamic> data){
		List<DestinyBaseItemComponentSetOfuint32> list = new List();
    data.forEach((item) {
      list.add(DestinyBaseItemComponentSetOfuint32.fromJson(item));
    });
    return list;
	}
}