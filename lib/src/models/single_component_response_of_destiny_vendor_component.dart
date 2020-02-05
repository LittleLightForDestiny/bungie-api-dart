import 'package:json_annotation/json_annotation.dart';

import 'destiny_vendor_component.dart';
import '../enums/component_privacy_setting.dart';

part 'single_component_response_of_destiny_vendor_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyVendorComponent{
	
	SingleComponentResponseOfDestinyVendorComponent();

	factory SingleComponentResponseOfDestinyVendorComponent.fromJson(Map<String, dynamic> json) => _$SingleComponentResponseOfDestinyVendorComponentFromJson(json);

	/// This component contains essential/summary information about the vendor.
	@JsonKey(name:'data')
	DestinyVendorComponent data;
	@JsonKey(name:'privacy',unknownEnumValue:ComponentPrivacySetting.None)
	ComponentPrivacySetting privacy;

	
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyVendorComponentToJson(this);
}