import 'destiny_item_objectives_component.dart';

/**  */
class SingleComponentResponseOfDestinyItemObjectivesComponent{
	
	/** Items can have objectives and progression. When you request this block, you will obtain information about any Objectives and progression tied to this item. */
	DestinyItemObjectivesComponent data;
	
	/** A set of flags for reason(s) why the component populated in the way that it did. Inspect the individual flags for the reasons. */
	int privacy;
	SingleComponentResponseOfDestinyItemObjectivesComponent(
		this.data,
		this.privacy,
	);

	static SingleComponentResponseOfDestinyItemObjectivesComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SingleComponentResponseOfDestinyItemObjectivesComponent(
				data['data'] != null ? DestinyItemObjectivesComponent.fromMap(data['data']) : null,
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
			data['data'] = this.data != null? this.data.toMap() : null;
			data['privacy'] = this.privacy;
		return data;
	}
}