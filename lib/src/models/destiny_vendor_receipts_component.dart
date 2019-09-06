import 'destiny_vendor_receipt.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_vendor_receipts_component.g.dart';

/// For now, this isn&#39;t used for much: it&#39;s a record of the recent refundable purchases that the user has made. In the future, it could be used for providing refunds&#x2F;buyback via the API. Wouldn&#39;t that be fun?
@JsonSerializable()
class DestinyVendorReceiptsComponent {

	/// The receipts for refundable purchases made at a vendor.
	@JsonKey(name:'receipts')
	List<DestinyVendorReceipt> receipts;
	DestinyVendorReceiptsComponent();

	factory DestinyVendorReceiptsComponent.fromJson(Map<String, dynamic> json) => _$DestinyVendorReceiptsComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyVendorReceiptsComponentToJson(this);
}
