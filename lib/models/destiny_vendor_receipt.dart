import 'destiny_item_quantity.dart';

/** If a character purchased an item that is refundable, a Vendor Receipt will be created on the user's Destiny Profile. These expire after a configurable period of time, but until then can be used to get refunds on items. BNet does not provide the ability to refund a purchase *yet*, but you know. */
class DestinyVendorReceipt{
	
	/** The amount paid for the item, in terms of items that were consumed in the purchase and their quantity. */
	List<DestinyItemQuantity> currencyPaid;
	
	/** The item that was received, and its quantity. */
	DestinyItemQuantity itemReceived;
	
	/** The unlock flag used to determine whether you still have the purchased item. */
	int licenseUnlockHash;
	
	/** The ID of the character who made the purchase. */
	String purchasedByCharacterId;
	
	/** Whether you can get a refund, and what happens in order for the refund to be received. See the DestinyVendorItemRefundPolicy enum for details. */
	int refundPolicy;
	
	/** The identifier of this receipt. */
	int sequenceNumber;
	
	/** The seconds since epoch at which this receipt is rendered invalid. */
	String timeToExpiration;
	
	/** The date at which this receipt is rendered invalid. */
	String expiresOn;
	DestinyVendorReceipt(
		this.currencyPaid,
		this.itemReceived,
		this.licenseUnlockHash,
		this.purchasedByCharacterId,
		this.refundPolicy,
		this.sequenceNumber,
		this.timeToExpiration,
		this.expiresOn,
	);

	static DestinyVendorReceipt fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyVendorReceipt(
				data['currencyPaid'] != null ? DestinyItemQuantity.fromList(data['currencyPaid']) : null,
				data['itemReceived'] != null ? DestinyItemQuantity.fromMap(data['itemReceived']) : null,
				data['licenseUnlockHash'],
				data['purchasedByCharacterId'],
				data['refundPolicy'],
				data['sequenceNumber'],
				data['timeToExpiration'],
				data['expiresOn'],
		);
	}

	static List<DestinyVendorReceipt> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyVendorReceipt> list = new List();
    data.forEach((item) {
      list.add(DestinyVendorReceipt.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['currencyPaid'] = this.currencyPaid.map((item)=>item.toMap()).toList();
			data['itemReceived'] = this.itemReceived;
			data['licenseUnlockHash'] = this.licenseUnlockHash;
			data['purchasedByCharacterId'] = this.purchasedByCharacterId;
			data['refundPolicy'] = this.refundPolicy;
			data['sequenceNumber'] = this.sequenceNumber;
			data['timeToExpiration'] = this.timeToExpiration;
			data['expiresOn'] = this.expiresOn;
		return data;
	}
}