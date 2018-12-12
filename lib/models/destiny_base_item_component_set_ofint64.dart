import 'dictionary_component_response_ofint64_and_destiny_item_objectives_component.dart';
class DestinyBaseItemComponentSetOfint64{
	DictionaryComponentResponseOfint64AndDestinyItemObjectivesComponent objectives;
	DestinyBaseItemComponentSetOfint64(
		DictionaryComponentResponseOfint64AndDestinyItemObjectivesComponent this.objectives,
	);

	static DestinyBaseItemComponentSetOfint64 fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyBaseItemComponentSetOfint64(
				DictionaryComponentResponseOfint64AndDestinyItemObjectivesComponent.fromMap(data['objectives']),
		);
	}

	static List<DestinyBaseItemComponentSetOfint64> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyBaseItemComponentSetOfint64> list = new List();
    data.forEach((item) {
      list.add(DestinyBaseItemComponentSetOfint64.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['objectives'] = this.objectives.toMap();
		return data;
	}
}