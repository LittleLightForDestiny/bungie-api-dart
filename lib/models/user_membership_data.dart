import 'user_info_card.dart';
import 'general_user.dart';
class UserMembershipData{
	List<UserInfoCard> destinyMemberships;
	GeneralUser bungieNetUser;
	UserMembershipData(
		List<UserInfoCard> this.destinyMemberships,
		GeneralUser this.bungieNetUser,
	);

	static UserMembershipData fromJson(Map<String, dynamic> data){
		return new UserMembershipData(
				UserInfoCard.fromList(data['destinyMemberships']),
				GeneralUser.fromJson(data['bungieNetUser']),
		);
	}

	static List<UserMembershipData> fromList(List<dynamic> data){
		List<UserMembershipData> list = new List();
    data.forEach((item) {
      list.add(UserMembershipData.fromJson(item));
    });
    return list;
	}
}