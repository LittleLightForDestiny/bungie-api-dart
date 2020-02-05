import 'package:json_annotation/json_annotation.dart';

import '../enums/platform_error_codes.dart';
import 'user_info_card.dart';

part 'destiny_error_profile.g.dart';

/// If a Destiny Profile can&#39;t be returned, but we&#39;re pretty certain it&#39;s a valid Destiny account, this will contain as much info as we can get about the profile for your use.
/// Assume that the most you&#39;ll get is the Error Code, the Membership Type and the Membership ID.
@JsonSerializable()
class DestinyErrorProfile{
	
	DestinyErrorProfile();

	factory DestinyErrorProfile.fromJson(Map<String, dynamic> json) => _$DestinyErrorProfileFromJson(json);

	/// The error that we encountered. You should be able to look up localized text to show to the user for these failures.
	@JsonKey(name:'errorCode',unknownEnumValue:PlatformErrorCodes.None)
	PlatformErrorCodes errorCode;
	/// Basic info about the account that failed. Don't expect anything other than membership ID, Membership Type, and displayName to be populated.
	@JsonKey(name:'infoCard')
	UserInfoCard infoCard;

	
	
	Map<String, dynamic> toJson() => _$DestinyErrorProfileToJson(this);
}