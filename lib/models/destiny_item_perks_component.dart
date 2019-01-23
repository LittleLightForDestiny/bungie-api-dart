import 'destiny_perk_reference.dart';

/** Instanced items can have perks: benefits that the item bestows.
These are related to DestinySandboxPerkDefinition, and sometimes - but not always - have human readable info. When they do, they are the icons and text that you see in an item's tooltip.
Talent Grids, Sockets, and the item itself can apply Perks, which are then summarized here for your convenience. */
class DestinyItemPerksComponent{
	
	/** The list of perks to display in an item tooltip - and whether or not they have been activated. */
	List<DestinyPerkReference> perks;
	DestinyItemPerksComponent(
		this.perks,
	);

	static DestinyItemPerksComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemPerksComponent(
				data['perks'] != null ? DestinyPerkReference.fromList(data['perks']) : null,
		);
	}

	static List<DestinyItemPerksComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemPerksComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyItemPerksComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['perks'] = this.perks != null? this.perks.map((item)=>item.toMap()).toList() : null;
		return data;
	}
}