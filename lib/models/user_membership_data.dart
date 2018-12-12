import 'user_info_card.dart';
import 'general_user.dart';
class UserMembershipData{
	List<UserInfoCard> destinyMemberships;
	GeneralUser bungieNetUser;
	UserMembershipData(
		List<UserInfoCard> this.destinyMemberships,
		GeneralUser this.bungieNetUser,
	);

	static UserMembershipData fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new UserMembershipData(
				UserInfoCard.fromList(data['destinyMemberships']),
				GeneralUser.fromMap(data['bungieNetUser']),
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
			data['destinyMemberships'] = this.destinyMemberships.map((item)=>item.toMap());
			data['bungieNetUser'] = this.bungieNetUser.toMap();
		return data;
	}
}