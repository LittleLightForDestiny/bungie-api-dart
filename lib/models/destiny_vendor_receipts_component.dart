import 'destiny_vendor_receipt.dart';
class DestinyVendorReceiptsComponent{
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