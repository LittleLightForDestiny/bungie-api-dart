import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import '../enums/platform_error_codes.dart';
import 'user_info_card.dart';

part 'destiny_error_profile.g.dart';

/// If a Destiny Profile can&#39;t be returned, but we&#39;re pretty certain it&#39;s a valid Destiny account, this will contain as much info as we can get about the profile for your use.
/// Assume that the most you&#39;ll get is the Error Code, the Membership Type and the Membership ID.
@JsonSerializable()
class DestinyErrorProfile{	
	DestinyErrorProfile();

	
	/// The error that we encountered. You should be able to look up localized text to show to the user for these failures.
	@JsonKey(name:'errorCode',fromJson:decodePlatformErrorCodes,toJson:encodePlatformErrorCodes)
	PlatformErrorCodes? errorCode;
	
	/// Basic info about the account that failed. Don't expect anything other than membership ID, Membership Type, and displayName to be populated.
	@JsonKey(name:'infoCard')
	UserInfoCard? infoCard;

	factory DestinyErrorProfile.fromJson(Map<String, dynamic> json) {
		return _$DestinyErrorProfileFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyErrorProfileToJson(this);

	static Future<DestinyErrorProfile> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyErrorProfile>((json)=>DestinyErrorProfile.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}