import 'package:json_annotation/json_annotation.dart';


part 'destiny_postmaster_transfer_request.g.dart';

@JsonSerializable()
class DestinyPostmasterTransferRequest{
	
	DestinyPostmasterTransferRequest();

	factory DestinyPostmasterTransferRequest.fromJson(Map<String, dynamic> json) => _$DestinyPostmasterTransferRequestFromJson(json);

	@JsonKey(name:'itemReferenceHash')
	int itemReferenceHash;
	@JsonKey(name:'stackSize')
	int stackSize;
	@JsonKey(name:'itemId')
	String itemId;
	@JsonKey(name:'characterId')
	String characterId;
	@JsonKey(name:'membershipType')
	int membershipType;

	
	
	Map<String, dynamic> toJson() => _$DestinyPostmasterTransferRequestToJson(this);
}