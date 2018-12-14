import 'destiny_profile_user_info_card.dart';
import 'user_info_card.dart';
import 'destiny_error_profile.dart';
class DestinyLinkedProfilesResponse{
	List<DestinyProfileUserInfoCard> profiles;
	UserInfoCard bnetMembership;
	List<DestinyErrorProfile> profilesWithErrors;
	DestinyLinkedProfilesResponse(
		this.profiles,
		this.bnetMembership,
		this.profilesWithErrors,
	);

	static DestinyLinkedProfilesResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyLinkedProfilesResponse(
				data['profiles'] != null ? DestinyProfileUserInfoCard.fromList(data['profiles']) : null,
				data['bnetMembership'] != null ? UserInfoCard.fromMap(data['bnetMembership']) : null,
				data['profilesWithErrors'] != null ? DestinyErrorProfile.fromList(data['profilesWithErrors']) : null,
		);
	}

	static List<DestinyLinkedProfilesResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyLinkedProfilesResponse> list = new List();
    data.forEach((item) {
      list.add(DestinyLinkedProfilesResponse.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['profiles'] = this.profiles.map((item)=>item.toMap()).toList();
			data['bnetMembership'] = this.bnetMembership;
			data['profilesWithErrors'] = this.profilesWithErrors.map((item)=>item.toMap()).toList();
		return data;
	}
}