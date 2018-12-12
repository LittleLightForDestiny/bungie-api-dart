import 'destiny_perk_reference.dart';
class DestinyItemPerksComponent{
	List<DestinyPerkReference> perks;
	DestinyItemPerksComponent(
		List<DestinyPerkReference> this.perks,
	);

	static DestinyItemPerksComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemPerksComponent(
				DestinyPerkReference.fromList(data['perks']),
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
			data['perks'] = this.perks.map((item)=>item.toMap());
		return data;
	}
}