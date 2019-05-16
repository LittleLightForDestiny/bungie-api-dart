import 'destiny_collectibles_component.dart';

/**  */
class SingleComponentResponseOfDestinyCollectiblesComponent{
	
	/**  */
	DestinyCollectiblesComponent data;
	
	/**  */
	int privacy;
	SingleComponentResponseOfDestinyCollectiblesComponent(
		this.data,
		this.privacy,
	);

	static SingleComponentResponseOfDestinyCollectiblesComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SingleComponentResponseOfDestinyCollectiblesComponent(
				data['data'] != null ? DestinyCollectiblesComponent.fromMap(data['data']) : null,
				data['privacy'],
		);
	}

	static List<SingleComponentResponseOfDestinyCollectiblesComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<SingleComponentResponseOfDestinyCollectiblesComponent> list = new List();
    data.forEach((item) {
      list.add(SingleComponentResponseOfDestinyCollectiblesComponent.fromMap(item));
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