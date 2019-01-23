import 'destiny_profile_user_info_card.dart';
import 'user_info_card.dart';
import 'destiny_error_profile.dart';

/** I know what you seek. You seek linked accounts. Found them, you have.
This contract returns a minimal amount of data about Destiny Accounts that are linked through your Bungie.Net account. We will not return accounts in this response whose */
class DestinyLinkedProfilesResponse{
	
	/** Any Destiny account for whom we could successfully pull characters will be returned here, as the Platform-level summary of user data. (no character data, no Destiny account data other than the Membership ID and Type so you can make further queries) */
	List<DestinyProfileUserInfoCard> profiles;
	
	/** If the requested membership had a linked Bungie.Net membership ID, this is the basic information about that BNet account.
I know, Tetron; I know this is mixing UserServices concerns with DestinyServices concerns. But it's so damn convenient! https://www.youtube.com/watch?v=X5R-bB-gKVI */
	UserInfoCard bnetMembership;
	
	/** This is brief summary info for profiles that we believe have valid Destiny info, but who failed to return data for some other reason and thus we know that subsequent calls for their info will also fail. */
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
			data['profiles'] = this.profiles != null? this.profiles.map((item)=>item.toMap()).toList() : null;
			data['bnetMembership'] = this.bnetMembership != null? this.bnetMembership.toMap() : null;
			data['profilesWithErrors'] = this.profilesWithErrors != null? this.profilesWithErrors.map((item)=>item.toMap()).toList() : null;
		return data;
	}
}