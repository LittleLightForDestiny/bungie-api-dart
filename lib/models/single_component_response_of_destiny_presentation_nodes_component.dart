import 'destiny_presentation_nodes_component.dart';
class SingleComponentResponseOfDestinyPresentationNodesComponent{
	DestinyPresentationNodesComponent data;
	int privacy;
	SingleComponentResponseOfDestinyPresentationNodesComponent(
		DestinyPresentationNodesComponent this.data,
		int this.privacy,
	);

	static SingleComponentResponseOfDestinyPresentationNodesComponent fromJson(Map<String, dynamic> data){
		return new SingleComponentResponseOfDestinyPresentationNodesComponent(
				DestinyPresentationNodesComponent.fromJson(data['data']),
				data['privacy'],
		);
	}

	static List<SingleComponentResponseOfDestinyPresentationNodesComponent> fromList(List<dynamic> data){
		List<SingleComponentResponseOfDestinyPresentationNodesComponent> list = new List();
    data.forEach((item) {
      list.add(SingleComponentResponseOfDestinyPresentationNodesComponent.fromJson(item));
    });
    return list;
	}
}