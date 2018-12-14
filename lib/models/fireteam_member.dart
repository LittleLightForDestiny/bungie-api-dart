import 'user_info_card.dart';
import 'user_info_card.dart';
class FireteamMember{
	UserInfoCard destinyUserInfo;
	UserInfoCard bungieNetUserInfo;
	String characterId;
	String dateJoined;
	bool hasMicrophone;
	String lastPlatformInviteAttemptDate;
	int lastPlatformInviteAttemptResult;
	FireteamMember(
		this.destinyUserInfo,
		this.bungieNetUserInfo,
		this.characterId,
		this.dateJoined,
		this.hasMicrophone,
		this.lastPlatformInviteAttemptDate,
		this.lastPlatformInviteAttemptResult,
	);

	static FireteamMember fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new FireteamMember(
				data['destinyUserInfo'] != null ? UserInfoCard.fromMap(data['destinyUserInfo']) : null,
				data['bungieNetUserInfo'] != null ? UserInfoCard.fromMap(data['bungieNetUserInfo']) : null,
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