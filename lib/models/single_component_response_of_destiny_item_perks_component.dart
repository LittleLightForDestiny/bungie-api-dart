import 'destiny_item_perks_component.dart';

/**  */
class SingleComponentResponseOfDestinyItemPerksComponent{
	
	/** Instanced items can have perks: benefits that the item bestows.
These are related to DestinySandboxPerkDefinition, and sometimes - but not always - have human readable info. When they do, they are the icons and text that you see in an item's tooltip.
Talent Grids, Sockets, and the item itself can apply Perks, which are then summarized here for your convenience. */
	DestinyItemPerksComponent data;
	
	/**  */
	int privacy;
	SingleComponentResponseOfDestinyItemPerksComponent(
		this.data,
		this.privacy,
	);

	static SingleComponentResponseOfDestinyItemPerksComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SingleComponentResponseOfDestinyItemPerksComponent(
				data['data'] != null ? DestinyItemPerksComponent.fromMap(data['data']) : null,
				data['privacy'],
		);
	}

	static List<SingleComponentResponseOfDestinyItemPerksComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<SingleComponentResponseOfDestinyItemPerksComponent> list = new List();
    data.forEach((item) {
      list.add(SingleComponentResponseOfDestinyItemPerksComponent.fromMap(item));
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