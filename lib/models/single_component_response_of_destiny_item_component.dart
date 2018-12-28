import 'destiny_item_component.dart';

/**  */
class SingleComponentResponseOfDestinyItemComponent{
	
	/** The base item component, filled with properties that are generally useful to know in any item request or that don't feel worthwhile to put in their own component. */
	DestinyItemComponent data;
	
	/** A set of flags for reason(s) why the component populated in the way that it did. Inspect the individual flags for the reasons. */
	int privacy;
	SingleComponentResponseOfDestinyItemComponent(
		this.data,
		this.privacy,
	);

	static SingleComponentResponseOfDestinyItemComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SingleComponentResponseOfDestinyItemComponent(
				data['data'] != null ? DestinyItemComponent.fromMap(data['data']) : null,
				data['privacy'],
		);
	}

	static List<SingleComponentResponseOfDestinyItemComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<SingleComponentResponseOfDestinyItemComponent> list = new List();
    data.forEach((item) {
      list.add(SingleComponentResponseOfDestinyItemComponent.fromMap(item));
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