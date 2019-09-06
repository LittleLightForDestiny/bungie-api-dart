
import 'package:json_annotation/json_annotation.dart';
part 'awa_authorization_result.g.dart';

@JsonSerializable()
class AwaAuthorizationResult {

	/// Indication of how the user responded to the request. If the value is &quot;Approved&quot; the actionToken will contain the token that can be presented when performing the advanced write action.
	@JsonKey(name:'userSelection')
	int userSelection;

	@JsonKey(name:'responseReason')
	int responseReason;

	/// Message to the app developer to help understand the response.
	@JsonKey(name:'developerNote')
	String developerNote;

	/// Credential used to prove the user authorized an advanced write action.
	@JsonKey(name:'actionToken')
	String actionToken;

	/// This token may be used to perform the requested action this number of times, at a maximum. If this value is 0, then there is no limit.
	@JsonKey(name:'maximumNumberOfUses')
	int maximumNumberOfUses;

	/// Time, UTC, when token expires.
	@JsonKey(name:'validUntil')
	String validUntil;

	/// Advanced Write Action Type from the permission request.
	@JsonKey(name:'type')
	int type;

	/// MembershipType from the permission request.
	@JsonKey(name:'membershipType')
	int membershipType;
	AwaAuthorizationResult();

	factory AwaAuthorizationResult.fromJson(Map<String, dynamic> json) => _$AwaAuthorizationResultFromJson(json);
	
	Map<String, dynamic> toJson() => _$AwaAuthorizationResultToJson(this);
}
