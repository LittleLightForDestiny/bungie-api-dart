import 'destiny_vendor_receipts_component.dart';

import 'package:json_annotation/json_annotation.dart';
part 'single_component_response_of_destiny_vendor_receipts_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyVendorReceiptsComponent {

	/// For now, this isn&#39;t used for much: it&#39;s a record of the recent refundable purchases that the user has made. In the future, it could be used for providing refunds&#x2F;buyback via the API. Wouldn&#39;t that be fun?
	@JsonKey(name:'data')
	DestinyVendorReceiptsComponent data;

	@JsonKey(name:'privacy')
	int privacy;
	SingleComponentResponseOfDestinyVendorReceiptsComponent();

	factory SingleComponentResponseOfDestinyVendorReceiptsComponent.fromJson(Map<String, dynamic> json) => _$SingleComponentResponseOfDestinyVendorReceiptsComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyVendorReceiptsComponentToJson(this);
}
