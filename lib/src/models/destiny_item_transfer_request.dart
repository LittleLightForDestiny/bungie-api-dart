import 'package:json_annotation/json_annotation.dart';

import '../enums/bungie_membership_type.dart';

part 'destiny_item_transfer_request.g.dart';

@JsonSerializable()
class DestinyItemTransferRequest{
	
	DestinyItemTransferRequest();

	factory DestinyItemTransferRequest.fromJson(Map<String, dynamic> json) {
		return _$DestinyItemTransferRequestFromJson(json);
	}

	@JsonKey(name:'itemReferenceHash')
	int? itemReferenceHash;
	@JsonKey(name:'stackSize')
	int? stackSize;
	@JsonKey(name:'transferToVault')
	bool? transferToVault;
	/// The instance ID of the item for this action request.
	@JsonKey(name:'itemId')
	String? itemId;
	@JsonKey(name:'characterId')
	String? characterId;
	@JsonKey(name:'membershipType',unknownEnumValue:BungieMembershipType.ProtectedInvalidEnumValue)
	BungieMembershipType? membershipType;

	
	
	Map<String, dynamic> toJson() => _$DestinyItemTransferRequestToJson(this);
}