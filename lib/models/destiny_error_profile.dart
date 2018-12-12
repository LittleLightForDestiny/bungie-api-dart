import 'user_info_card.dart';
class DestinyErrorProfile{
	int errorCode;
	UserInfoCard infoCard;
	DestinyErrorProfile(
		int this.errorCode,
		UserInfoCard this.infoCard,
	);

	static DestinyErrorProfile fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyErrorProfile(
				data['errorCode'],
				data['infoCard'],
		);
	}

	static List<DestinyErrorProfile> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyErrorProfile> list = new List();
    data.forEach((item) {
      list.add(DestinyErrorProfile.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['errorCode'] = this.errorCode;
			data['infoCard'] = this.infoCard;
		return data;
	}
}