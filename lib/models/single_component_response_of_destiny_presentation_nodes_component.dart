import 'destiny_presentation_nodes_component.dart';
class SingleComponentResponseOfDestinyPresentationNodesComponent{
	DestinyPresentationNodesComponent data;
	int privacy;
	SingleComponentResponseOfDestinyPresentationNodesComponent(
		this.data,
		this.privacy,
	);

	static SingleComponentResponseOfDestinyPresentationNodesComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SingleComponentResponseOfDestinyPresentationNodesComponent(
				data['data'] != null ? DestinyPresentationNodesComponent.fromMap(data['data']) : null,
				data['privacy'],
		);
	}

	static List<SingleComponentResponseOfDestinyPresentationNodesComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<SingleComponentResponseOfDestinyPresentationNodesComponent> list = new List();
    data.forEach((item) {
      list.add(SingleComponentResponseOfDestinyPresentationNodesComponent.fromMap(item));
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