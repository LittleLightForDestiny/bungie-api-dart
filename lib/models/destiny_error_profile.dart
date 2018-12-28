import 'user_info_card.dart';

/* If a Destiny Profile can't be returned, but we're pretty certain it's a valid Destiny account, this will contain as much info as we can get about the profile for your use.
Assume that the most you'll get is the Error Code, the Membership Type and the Membership ID. */
class DestinyErrorProfile{
	
	/* The error that we encountered. You should be able to look up localized text to show to the user for these failures. */
	int errorCode;
	
	/* Basic info about the account that failed. Don't expect anything other than membership ID, Membership Type, and displayName to be populated. */
	UserInfoCard infoCard;
	DestinyErrorProfile(
		this.errorCode,
		this.infoCard,
	);

	static DestinyErrorProfile fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyErrorProfile(
				data['errorCode'],
				data['infoCard'] != null ? UserInfoCard.fromMap(data['infoCard']) : null,
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