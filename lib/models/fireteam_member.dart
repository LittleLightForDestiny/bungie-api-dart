import 'user_info_card.dart';
import 'user_info_card.dart';
class FireteamMember{
	UserInfoCard destinyUserInfo;
	UserInfoCard bungieNetUserInfo;
	int characterId;
	String dateJoined;
	bool hasMicrophone;
	String lastPlatformInviteAttemptDate;
	int lastPlatformInviteAttemptResult;
	FireteamMember(
		UserInfoCard this.destinyUserInfo,
		UserInfoCard this.bungieNetUserInfo,
		int this.characterId,
		String this.dateJoined,
		bool this.hasMicrophone,
		String this.lastPlatformInviteAttemptDate,
		int this.lastPlatformInviteAttemptResult,
	);

	static FireteamMember fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new FireteamMember(
				UserInfoCard.fromJson(data['destinyUserInfo']),
				UserInfoCard.fromJson(data['bungieNetUserInfo']),
				data['characterId'],
				data['dateJoined'],
				data['hasMicrophone'],
				data['lastPlatformInviteAttemptDate'],
				data['lastPlatformInviteAttemptResult'],
		);
	}

	static List<FireteamMember> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<FireteamMember> list = new List();
    data.forEach((item) {
      list.add(FireteamMember.fromJson(item));
    });
    return list;
	}
}