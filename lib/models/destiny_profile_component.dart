import 'user_info_card.dart';

/** The most essential summary information about a Profile (in Destiny 1, we called these "Accounts"). */
class DestinyProfileComponent{
	
	/** If you need to render the Profile (their platform name, icon, etc...) somewhere, this property contains that information. */
	UserInfoCard userInfo;
	
	/** The last time the user played with any character on this Profile. */
	String dateLastPlayed;
	
	/** If you want to know what expansions they own, this will contain that data. */
	int versionsOwned;
	
	/** A list of the character IDs, for further querying on your part. */
	List<String> characterIds;
	DestinyProfileComponent(
		this.userInfo,
		this.dateLastPlayed,
		this.versionsOwned,
		this.characterIds,
	);

	static DestinyProfileComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyProfileComponent(
				data['userInfo'] != null ? UserInfoCard.fromMap(data['userInfo']) : null,
				data['dateLastPlayed'],
				data['versionsOwned'],
				data['characterIds'] != null ? data['characterIds']?.cast<String>() ?? null : null,
		);
	}

	static List<DestinyProfileComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyProfileComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyProfileComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['userInfo'] = this.userInfo;
			data['dateLastPlayed'] = this.dateLastPlayed;
			data['versionsOwned'] = this.versionsOwned;
			data['characterIds'] = this.characterIds;
		return data;
	}
}