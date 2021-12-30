import 'package:json_annotation/json_annotation.dart';

import '../enums/awa_user_selection.dart';
import '../enums/awa_response_reason.dart';
import '../enums/awa_type.dart';
import '../enums/bungie_membership_type.dart';

part 'awa_authorization_result.g.dart';

@JsonSerializable()
class AwaAuthorizationResult{	
	AwaAuthorizationResult();

	factory AwaAuthorizationResult.fromJson(Map<String, dynamic> json) {
		return _$AwaAuthorizationResultFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$AwaAuthorizationResultToJson(this);
	
	/// Indication of how the user responded to the request. If the value is "Approved" the actionToken will contain the token that can be presented when performing the advanced write action.
	@JsonKey(name:'userSelection',unknownEnumValue:AwaUserSelection.ProtectedInvalidEnumValue)
	AwaUserSelection? userSelection;
	
	@JsonKey(name:'responseReason',unknownEnumValue:AwaResponseReason.ProtectedInvalidEnumValue)
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
	@JsonKey(name:'type',unknownEnumValue:AwaType.ProtectedInvalidEnumValue)
	AwaType? type;
	
	/// MembershipType from the permission request.
	@JsonKey(name:'membershipType',unknownEnumValue:BungieMembershipType.ProtectedInvalidEnumValue)
	BungieMembershipType? membershipType;
}