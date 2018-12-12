import 'dictionary_component_response_ofuint32_and_destiny_item_objectives_component.dart';
class DestinyBaseItemComponentSetOfuint32{
	DictionaryComponentResponseOfuint32AndDestinyItemObjectivesComponent objectives;
	DestinyBaseItemComponentSetOfuint32(
		DictionaryComponentResponseOfuint32AndDestinyItemObjectivesComponent this.objectives,
	);

	static DestinyBaseItemComponentSetOfuint32 fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyBaseItemComponentSetOfuint32(
				DictionaryComponentResponseOfuint32AndDestinyItemObjectivesComponent.fromMap(data['objectives']),
		);
	}

	static List<DestinyBaseItemComponentSetOfuint32> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyBaseItemComponentSetOfuint32> list = new List();
    data.forEach((item) {
      list.add(DestinyBaseItemComponentSetOfuint32.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['objectives'] = this.objectives.toMap();
		return data;
	}
}