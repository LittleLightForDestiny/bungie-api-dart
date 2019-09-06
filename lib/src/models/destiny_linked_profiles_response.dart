import 'destiny_profile_user_info_card.dart';
import 'user_info_card.dart';
import 'destiny_error_profile.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_linked_profiles_response.g.dart';

/// I know what you seek. You seek linked accounts. Found them, you have.
/// This contract returns a minimal amount of data about Destiny Accounts that are linked through your Bungie.Net account. We will not return accounts in this response whose
@JsonSerializable()
class DestinyLinkedProfilesResponse {

	/// Any Destiny account for whom we could successfully pull characters will be returned here, as the Platform-level summary of user data. (no character data, no Destiny account data other than the Membership ID and Type so you can make further queries)
	@JsonKey(name:'profiles')
	List<DestinyProfileUserInfoCard> profiles;

	/// If the requested membership had a linked Bungie.Net membership ID, this is the basic information about that BNet account.
	/// I know, Tetron; I know this is mixing UserServices concerns with DestinyServices concerns. But it&#39;s so damn convenient! https:&#x2F;&#x2F;www.youtube.com&#x2F;watch?v&#x3D;X5R-bB-gKVI
	@JsonKey(name:'bnetMembership')
	UserInfoCard bnetMembership;

	/// This is brief summary info for profiles that we believe have valid Destiny info, but who failed to return data for some other reason and thus we know that subsequent calls for their info will also fail.
	@JsonKey(name:'profilesWithErrors')
	List<DestinyErrorProfile> profilesWithErrors;
	DestinyLinkedProfilesResponse();

	factory DestinyLinkedProfilesResponse.fromJson(Map<String, dynamic> json) => _$DestinyLinkedProfilesResponseFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyLinkedProfilesResponseToJson(this);
}
