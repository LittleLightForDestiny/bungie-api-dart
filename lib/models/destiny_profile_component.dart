import 'user_info_card.dart';
class DestinyProfileComponent{
	UserInfoCard userInfo;
	String dateLastPlayed;
	int versionsOwned;
	List<int> characterIds;
	DestinyProfileComponent(
		UserInfoCard this.userInfo,
		String this.dateLastPlayed,
		int this.versionsOwned,
		List<int> this.characterIds,
	);

	static DestinyProfileComponent fromJson(Map<String, dynamic> data){
		return new DestinyProfileComponent(
				data['userInfo'],
				data['dateLastPlayed'],
				data['versionsOwned'],
				data['characterIds'],
		);
	}

	static List<DestinyProfileComponent> fromList(List<dynamic> data){
		List<DestinyProfileComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyProfileComponent.fromJson(item));
    });
    return list;
	}
}