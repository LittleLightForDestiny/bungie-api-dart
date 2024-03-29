import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_item_quantity.dart';
import '../enums/destiny_vendor_item_refund_policy.dart';

part 'destiny_vendor_receipt.g.dart';

/// If a character purchased an item that is refundable, a Vendor Receipt will be created on the user&#39;s Destiny Profile. These expire after a configurable period of time, but until then can be used to get refunds on items. BNet does not provide the ability to refund a purchase *yet*, but you know.
@JsonSerializable()
class DestinyVendorReceipt{	
	DestinyVendorReceipt();

	
	/// The amount paid for the item, in terms of items that were consumed in the purchase and their quantity.
	@JsonKey(name:'currencyPaid')
	List<DestinyItemQuantity>? currencyPaid;
	
	/// The item that was received, and its quantity.
	@JsonKey(name:'itemReceived')
	DestinyItemQuantity? itemReceived;
	
	/// The unlock flag used to determine whether you still have the purchased item.
	@JsonKey(name:'licenseUnlockHash')
	int? licenseUnlockHash;
	
	/// The ID of the character who made the purchase.
	@JsonKey(name:'purchasedByCharacterId')
	String? purchasedByCharacterId;
	
	/// Whether you can get a refund, and what happens in order for the refund to be received. See the DestinyVendorItemRefundPolicy enum for details.
	@JsonKey(name:'refundPolicy',fromJson:decodeDestinyVendorItemRefundPolicy,toJson:encodeDestinyVendorItemRefundPolicy)
	DestinyVendorItemRefundPolicy? refundPolicy;
	
	/// The identifier of this receipt.
	@JsonKey(name:'sequenceNumber')
	int? sequenceNumber;
	
	/// The seconds since epoch at which this receipt is rendered invalid.
	@JsonKey(name:'timeToExpiration')
	String? timeToExpiration;
	
	/// The date at which this receipt is rendered invalid.
	@JsonKey(name:'expiresOn')
	String? expiresOn;

	factory DestinyVendorReceipt.fromJson(Map<String, dynamic> json) {
		return _$DestinyVendorReceiptFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyVendorReceiptToJson(this);

	static Future<DestinyVendorReceipt> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyVendorReceipt>((json)=>DestinyVendorReceipt.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}