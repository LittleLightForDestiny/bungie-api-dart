import 'destiny_item_objectives_component.dart';
class SingleComponentResponseOfDestinyItemObjectivesComponent{
	DestinyItemObjectivesComponent data;
	int privacy;
	SingleComponentResponseOfDestinyItemObjectivesComponent(
		DestinyItemObjectivesComponent this.data,
		int this.privacy,
	);

	static SingleComponentResponseOfDestinyItemObjectivesComponent fromJson(Map<String, dynamic> data){
		return new SingleComponentResponseOfDestinyItemObjectivesComponent(
				DestinyItemObjectivesComponent.fromJson(data['data']),
				data['privacy'],
		);
	}

	static List<SingleComponentResponseOfDestinyItemObjectivesComponent> fromList(List<dynamic> data){
		List<SingleComponentResponseOfDestinyItemObjectivesComponent> list = new List();
    data.forEach((item) {
      list.add(SingleComponentResponseOfDestinyItemObjectivesComponent.fromJson(item));
    });
    return list;
	}
}