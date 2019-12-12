import 'package:json_annotation/json_annotation.dart';


part 'destiny_item_transfer_request.g.dart';

@JsonSerializable()
class DestinyItemTransferRequest{
	
	DestinyItemTransferRequest();

	factory DestinyItemTransferRequest.fromJson(Map<String, dynamic> json) => _$DestinyItemTransferRequestFromJson(json);

	@JsonKey(name:'itemReferenceHash')
	int itemReferenceHash;
	@JsonKey(name:'stackSize')
	int stackSize;
	@JsonKey(name:'transferToVault')
	bool transferToVault;
	@JsonKey(name:'itemId')
	String itemId;
	@JsonKey(name:'characterId')
	String characterId;
	@JsonKey(name:'membershipType')
	int membershipType;

	
	
	Map<String, dynamic> toJson() => _$DestinyItemTransferRequestToJson(this);
}