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

	static FireteamMember fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new FireteamMember(
				UserInfoCard.fromMap(data['destinyUserInfo']),
				UserInfoCard.fromMap(data['bungieNetUserInfo']),
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
      list.add(FireteamMember.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['destinyUserInfo'] = this.destinyUserInfo.toMap();
			data['bungieNetUserInfo'] = this.bungieNetUserInfo.toMap();
			data['characterId'] = this.characterId;
			data['dateJoined'] = this.dateJoined;
			data['hasMicrophone'] = this.hasMicrophone;
			data['lastPlatformInviteAttemptDate'] = this.lastPlatformInviteAttemptDate;
			data['lastPlatformInviteAttemptResult'] = this.lastPlatformInviteAttemptResult;
		return data;
	}
}