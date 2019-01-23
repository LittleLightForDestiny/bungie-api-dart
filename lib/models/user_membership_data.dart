import 'user_info_card.dart';
import 'general_user.dart';

/**  */
class UserMembershipData{
	
	/** this allows you to see destiny memberships that are visible and linked to this account (regardless of whether or not they have characters on the world server) */
	List<UserInfoCard> destinyMemberships;
	
	/**  */
	GeneralUser bungieNetUser;
	UserMembershipData(
		this.destinyMemberships,
		this.bungieNetUser,
	);

	static UserMembershipData fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new UserMembershipData(
				data['destinyMemberships'] != null ? UserInfoCard.fromList(data['destinyMemberships']) : null,
				data['bungieNetUser'] != null ? GeneralUser.fromMap(data['bungieNetUser']) : null,
		);
	}

	static List<UserMembershipData> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<UserMembershipData> list = new List();
    data.forEach((item) {
      list.add(UserMembershipData.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['destinyMemberships'] = this.destinyMemberships != null? this.destinyMemberships.map((item)=>item.toMap()).toList() : null;
			data['bungieNetUser'] = this.bungieNetUser != null? this.bungieNetUser.toMap() : null;
		return data;
	}
}