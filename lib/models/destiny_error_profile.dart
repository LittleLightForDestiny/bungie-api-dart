import 'user_info_card.dart';
class DestinyErrorProfile{
	int errorCode;
	UserInfoCard infoCard;
	DestinyErrorProfile(
		int this.errorCode,
		UserInfoCard this.infoCard,
	);

	static DestinyErrorProfile fromJson(Map<String, dynamic> data){
		return new DestinyErrorProfile(
				data['errorCode'],
				data['infoCard'],
		);
	}

	static List<DestinyErrorProfile> fromList(List<dynamic> data){
		List<DestinyErrorProfile> list = new List();
    data.forEach((item) {
      list.add(DestinyErrorProfile.fromJson(item));
    });
    return list;
	}
}