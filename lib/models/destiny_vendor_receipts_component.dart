import 'destiny_vendor_receipt.dart';

/* For now, this isn't used for much: it's a record of the recent refundable purchases that the user has made. In the future, it could be used for providing refunds/buyback via the API. Wouldn't that be fun? */
class DestinyVendorReceiptsComponent{
	
	/* The receipts for refundable purchases made at a vendor. */
	List<DestinyVendorReceipt> receipts;
	DestinyVendorReceiptsComponent(
		this.receipts,
	);

	static DestinyVendorReceiptsComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyVendorReceiptsComponent(
				data['receipts'] != null ? DestinyVendorReceipt.fromList(data['receipts']) : null,
		);
	}

	static List<DestinyVendorReceiptsComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyVendorReceiptsComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyVendorReceiptsComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['receipts'] = this.receipts.map((item)=>item.toMap()).toList();
		return data;
	}
}