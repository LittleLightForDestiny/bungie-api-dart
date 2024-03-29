import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_vendor_component.dart';
import '../enums/component_privacy_setting.dart';

part 'single_component_response_of_destiny_vendor_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyVendorComponent{	
	SingleComponentResponseOfDestinyVendorComponent();

	
	/// This component contains essential/summary information about the vendor.
	@JsonKey(name:'data')
	DestinyVendorComponent? data;
	
	@JsonKey(name:'privacy',fromJson:decodeComponentPrivacySetting,toJson:encodeComponentPrivacySetting)
	ComponentPrivacySetting? privacy;
	
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool? disabled;

	factory SingleComponentResponseOfDestinyVendorComponent.fromJson(Map<String, dynamic> json) {
		return _$SingleComponentResponseOfDestinyVendorComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyVendorComponentToJson(this);

	static Future<SingleComponentResponseOfDestinyVendorComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, SingleComponentResponseOfDestinyVendorComponent>((json)=>SingleComponentResponseOfDestinyVendorComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}