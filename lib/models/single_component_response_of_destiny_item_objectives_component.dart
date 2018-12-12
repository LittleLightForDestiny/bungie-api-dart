import 'destiny_item_objectives_component.dart';
class SingleComponentResponseOfDestinyItemObjectivesComponent{
	DestinyItemObjectivesComponent data;
	int privacy;
	SingleComponentResponseOfDestinyItemObjectivesComponent(
		DestinyItemObjectivesComponent this.data,
		int this.privacy,
	);

	static SingleComponentResponseOfDestinyItemObjectivesComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SingleComponentResponseOfDestinyItemObjectivesComponent(
				DestinyItemObjectivesComponent.fromMap(data['data']),
				data['privacy'],
		);
	}

	static List<SingleComponentResponseOfDestinyItemObjectivesComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<SingleComponentResponseOfDestinyItemObjectivesComponent> list = new List();
    data.forEach((item) {
      list.add(SingleComponentResponseOfDestinyItemObjectivesComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['data'] = this.data.toMap();
			data['privacy'] = this.privacy;
		return data;
	}
}