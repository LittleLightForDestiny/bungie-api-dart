import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_vendor_receipts_component.dart';
import '../enums/component_privacy_setting.dart';

part 'single_component_response_of_destiny_vendor_receipts_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyVendorReceiptsComponent{	
	SingleComponentResponseOfDestinyVendorReceiptsComponent();

	
	/// For now, this isn't used for much: it's a record of the recent refundable purchases that the user has made. In the future, it could be used for providing refunds/buyback via the API. Wouldn't that be fun?
	@JsonKey(name:'data')
	DestinyVendorReceiptsComponent? data;
	
	@JsonKey(name:'privacy',fromJson:decodeComponentPrivacySetting,toJson:encodeComponentPrivacySetting)
	ComponentPrivacySetting? privacy;
	
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool? disabled;

	factory SingleComponentResponseOfDestinyVendorReceiptsComponent.fromJson(Map<String, dynamic> json) {
		return _$SingleComponentResponseOfDestinyVendorReceiptsComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyVendorReceiptsComponentToJson(this);

	static Future<SingleComponentResponseOfDestinyVendorReceiptsComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, SingleComponentResponseOfDestinyVendorReceiptsComponent>((json)=>SingleComponentResponseOfDestinyVendorReceiptsComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}