import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import '../enums/awa_user_selection.dart';
import '../enums/awa_response_reason.dart';
import '../enums/awa_type.dart';
import '../enums/bungie_membership_type.dart';

part 'awa_authorization_result.g.dart';

@JsonSerializable()
class AwaAuthorizationResult{	
	AwaAuthorizationResult();

	
	/// Indication of how the user responded to the request. If the value is "Approved" the actionToken will contain the token that can be presented when performing the advanced write action.
	@JsonKey(name:'userSelection',fromJson:decodeAwaUserSelection,toJson:encodeAwaUserSelection)
	AwaUserSelection? userSelection;
	
	@JsonKey(name:'responseReason',fromJson:decodeAwaResponseReason,toJson:encodeAwaResponseReason)
	AwaResponseReason? responseReason;
	
	/// Message to the app developer to help understand the response.
	@JsonKey(name:'developerNote')
	String? developerNote;
	
	/// Credential used to prove the user authorized an advanced write action.
	@JsonKey(name:'actionToken')
	String? actionToken;
	
	/// This token may be used to perform the requested action this number of times, at a maximum. If this value is 0, then there is no limit.
	@JsonKey(name:'maximumNumberOfUses')
	int? maximumNumberOfUses;
	
	/// Time, UTC, when token expires.
	@JsonKey(name:'validUntil')
	String? validUntil;
	
	/// Advanced Write Action Type from the permission request.
	@JsonKey(name:'type',fromJson:decodeAwaType,toJson:encodeAwaType)
	AwaType? type;
	
	/// MembershipType from the permission request.
	@JsonKey(name:'membershipType',fromJson:decodeBungieMembershipType,toJson:encodeBungieMembershipType)
	BungieMembershipType? membershipType;

	factory AwaAuthorizationResult.fromJson(Map<String, dynamic> json) {
		return _$AwaAuthorizationResultFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$AwaAuthorizationResultToJson(this);

	static Future<AwaAuthorizationResult> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, AwaAuthorizationResult>((json)=>AwaAuthorizationResult.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}