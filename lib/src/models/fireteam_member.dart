import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'fireteam_user_info_card.dart';
import 'user_info_card.dart';
import '../enums/fireteam_platform_invite_result.dart';

part 'fireteam_member.g.dart';

@JsonSerializable()
class FireteamMember{	
	FireteamMember();

	
	@JsonKey(name:'destinyUserInfo')
	FireteamUserInfoCard? destinyUserInfo;
	
	/// This contract supplies basic information commonly used to display a minimal amount of information about a user. Take care to not add more properties here unless the property applies in all (or at least the majority) of the situations where UserInfoCard is used. Avoid adding game specific or platform specific details here. In cases where UserInfoCard is a subset of the data needed in a contract, use UserInfoCard as a property of other contracts.
	@JsonKey(name:'bungieNetUserInfo')
	UserInfoCard? bungieNetUserInfo;
	
	@JsonKey(name:'characterId')
	String? characterId;
	
	@JsonKey(name:'dateJoined')
	String? dateJoined;
	
	@JsonKey(name:'hasMicrophone')
	bool? hasMicrophone;
	
	@JsonKey(name:'lastPlatformInviteAttemptDate')
	String? lastPlatformInviteAttemptDate;
	
	@JsonKey(name:'lastPlatformInviteAttemptResult',fromJson:decodeFireteamPlatformInviteResult,toJson:encodeFireteamPlatformInviteResult)
	FireteamPlatformInviteResult? lastPlatformInviteAttemptResult;

	factory FireteamMember.fromJson(Map<String, dynamic> json) {
		return _$FireteamMemberFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$FireteamMemberToJson(this);

	static Future<FireteamMember> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, FireteamMember>((json)=>FireteamMember.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}