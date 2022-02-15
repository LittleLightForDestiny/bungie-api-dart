import 'package:json_annotation/json_annotation.dart';

import '../enums/bungie_membership_type.dart';

part 'destiny_postmaster_transfer_request.g.dart';

@JsonSerializable()
class DestinyPostmasterTransferRequest{	
	DestinyPostmasterTransferRequest();

	factory DestinyPostmasterTransferRequest.fromJson(Map<String, dynamic> json) {
		return _$DestinyPostmasterTransferRequestFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyPostmasterTransferRequestToJson(this);
	
	@JsonKey(name:'itemReferenceHash')
	int? itemReferenceHash;
	
	@JsonKey(name:'stackSize')
	int? stackSize;
	
	/// The instance ID of the item for this action request.
	@JsonKey(name:'itemId')
	String? itemId;
	
	@JsonKey(name:'characterId')
	String? characterId;
	
	@JsonKey(name:'membershipType',fromJson:decodeBungieMembershipType,toJson:encodeBungieMembershipType)
	BungieMembershipType? membershipType;
}