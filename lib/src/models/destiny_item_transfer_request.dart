import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import '../enums/bungie_membership_type.dart';

part 'destiny_item_transfer_request.g.dart';

@JsonSerializable()
class DestinyItemTransferRequest{	
	DestinyItemTransferRequest();

	
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
	
	@JsonKey(name:'membershipType',fromJson:decodeBungieMembershipType,toJson:encodeBungieMembershipType)
	BungieMembershipType? membershipType;

	factory DestinyItemTransferRequest.fromJson(Map<String, dynamic> json) {
		return _$DestinyItemTransferRequestFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyItemTransferRequestToJson(this);

	static Future<DestinyItemTransferRequest> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyItemTransferRequest>((json)=>DestinyItemTransferRequest.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}