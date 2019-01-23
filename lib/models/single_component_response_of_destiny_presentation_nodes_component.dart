import 'destiny_presentation_nodes_component.dart';

/**  */
class SingleComponentResponseOfDestinyPresentationNodesComponent{
	
	/**  */
	DestinyPresentationNodesComponent data;
	
	/** A set of flags for reason(s) why the component populated in the way that it did. Inspect the individual flags for the reasons. */
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
			data['data'] = this.data != null? this.data.toMap() : null;
			data['privacy'] = this.privacy;
		return data;
	}
}