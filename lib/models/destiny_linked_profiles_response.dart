import 'user_info_card.dart';
import 'user_info_card.dart';
import 'destiny_error_profile.dart';
class DestinyLinkedProfilesResponse{
	List<UserInfoCard> profiles;
	UserInfoCard bnetMembership;
	List<DestinyErrorProfile> profilesWithErrors;
	DestinyLinkedProfilesResponse(
		List<UserInfoCard> this.profiles,
		UserInfoCard this.bnetMembership,
		List<DestinyErrorProfile> this.profilesWithErrors,
	);

	static DestinyLinkedProfilesResponse fromJson(Map<String, dynamic> data){
		return new DestinyLinkedProfilesResponse(
				UserInfoCard.fromList(data['profiles']),
				data['bnetMembership'],
				DestinyErrorProfile.fromList(data['profilesWithErrors']),
		);
	}

	static List<DestinyLinkedProfilesResponse> fromList(List<dynamic> data){
		List<DestinyLinkedProfilesResponse> list = new List();
    data.forEach((item) {
      list.add(DestinyLinkedProfilesResponse.fromJson(item));
    });
    return list;
	}
}