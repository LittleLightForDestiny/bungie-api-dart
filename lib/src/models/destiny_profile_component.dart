import 'user_info_card.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_profile_component.g.dart';

/// The most essential summary information about a Profile (in Destiny 1, we called these &quot;Accounts&quot;).
@JsonSerializable()
class DestinyProfileComponent {

	/// If you need to render the Profile (their platform name, icon, etc...) somewhere, this property contains that information.
	@JsonKey(name:'userInfo')
	UserInfoCard userInfo;

	/// The last time the user played with any character on this Profile.
	@JsonKey(name:'dateLastPlayed')
	String dateLastPlayed;

	/// If you want to know what expansions they own, this will contain that data.
	@JsonKey(name:'versionsOwned')
	int versionsOwned;

	/// A list of the character IDs, for further querying on your part.
	@JsonKey(name:'characterIds')
	List<String> characterIds;
	DestinyProfileComponent();

	factory DestinyProfileComponent.fromJson(Map<String, dynamic> json) => _$DestinyProfileComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyProfileComponentToJson(this);
}
