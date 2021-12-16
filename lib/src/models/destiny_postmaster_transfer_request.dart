import 'package:json_annotation/json_annotation.dart';

import '../enums/bungie_membership_type.dart';

part 'destiny_postmaster_transfer_request.g.dart';

@JsonSerializable()
class DestinyPostmasterTransferRequest{
	
	DestinyPostmasterTransferRequest();

	factory DestinyPostmasterTransferRequest.fromJson(Map<String, dynamic> json) {
		return _$DestinyPostmasterTransferRequestFromJson(json);
	}

	@JsonKey(name:'itemReferenceHash')
	int? itemReferenceHash;
	@JsonKey(name:'stackSize')
	int? stackSize;
	@JsonKey(name:'itemId')
	String? itemId;
	@JsonKey(name:'characterId')
	String? characterId;
	@JsonKey(name:'membershipType',unknownEnumValue:BungieMembershipType.ProtectedInvalidEnumValue)
	BungieMembershipType? membershipType;

	
	
	Map<String, dynamic> toJson() => _$DestinyPostmasterTransferRequestToJson(this);
}