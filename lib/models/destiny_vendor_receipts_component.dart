import 'destiny_vendor_receipt.dart';
class DestinyVendorReceiptsComponent{
	List<DestinyVendorReceipt> receipts;
	DestinyVendorReceiptsComponent(
		List<DestinyVendorReceipt> this.receipts,
	);

	static DestinyVendorReceiptsComponent fromJson(Map<String, dynamic> data){
		return new DestinyVendorReceiptsComponent(
				DestinyVendorReceipt.fromList(data['receipts']),
		);
	}

	static List<DestinyVendorReceiptsComponent> fromList(List<dynamic> data){
		List<DestinyVendorReceiptsComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyVendorReceiptsComponent.fromJson(item));
    });
    return list;
	}
}