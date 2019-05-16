import 'destiny_item_talent_grid_component.dart';

/**  */
class SingleComponentResponseOfDestinyItemTalentGridComponent{
	
	/** Well, we're here in Destiny 2, and Talent Grids are unfortunately still around.
The good news is that they're pretty much only being used for certain base information on items and for Builds/Subclasses. The bad news is that they still suck. If you really want this information, grab this component.
An important note is that talent grids are defined as such:
A Grid has 1:M Nodes, which has 1:M Steps.
Any given node can only have a single step active at one time, which represents the actual visual contents and effects of the Node (for instance, if you see a "Super Cool Bonus" node, the actual icon and text for the node is coming from the current Step of that node).
Nodes can be grouped into exclusivity sets *and* as of D2, exclusivity groups (which are collections of exclusivity sets that affect each other).
See DestinyTalentGridDefinition for more information. Brace yourself, the water's cold out there in the deep end. */
	DestinyItemTalentGridComponent data;
	
	/**  */
	int privacy;
	SingleComponentResponseOfDestinyItemTalentGridComponent(
		this.data,
		this.privacy,
	);

	static SingleComponentResponseOfDestinyItemTalentGridComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SingleComponentResponseOfDestinyItemTalentGridComponent(
				data['data'] != null ? DestinyItemTalentGridComponent.fromMap(data['data']) : null,
				data['privacy'],
		);
	}

	static List<SingleComponentResponseOfDestinyItemTalentGridComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<SingleComponentResponseOfDestinyItemTalentGridComponent> list = new List();
    data.forEach((item) {
      list.add(SingleComponentResponseOfDestinyItemTalentGridComponent.fromMap(item));
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