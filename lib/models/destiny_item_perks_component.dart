import 'destiny_perk_reference.dart';
class DestinyItemPerksComponent{
	List<DestinyPerkReference> perks;
	DestinyItemPerksComponent(
		List<DestinyPerkReference> this.perks,
	);

	static DestinyItemPerksComponent fromJson(Map<String, dynamic> data){
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
      list.add(DestinyItemPerksComponent.fromJson(item));
    });
    return list;
	}
}