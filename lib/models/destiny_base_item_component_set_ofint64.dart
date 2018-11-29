import 'dictionary_component_response_ofint64_and_destiny_item_objectives_component.dart';
class DestinyBaseItemComponentSetOfint64{
	DictionaryComponentResponseOfint64AndDestinyItemObjectivesComponent objectives;
	DestinyBaseItemComponentSetOfint64(
		DictionaryComponentResponseOfint64AndDestinyItemObjectivesComponent this.objectives,
	);

	static DestinyBaseItemComponentSetOfint64 fromJson(Map<String, dynamic> data){
		return new DestinyBaseItemComponentSetOfint64(
				DictionaryComponentResponseOfint64AndDestinyItemObjectivesComponent.fromJson(data['objectives']),
		);
	}

	static List<DestinyBaseItemComponentSetOfint64> fromList(List<dynamic> data){
		List<DestinyBaseItemComponentSetOfint64> list = new List();
    data.forEach((item) {
      list.add(DestinyBaseItemComponentSetOfint64.fromJson(item));
    });
    return list;
	}
}