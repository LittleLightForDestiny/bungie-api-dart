import 'destiny_vendor_component.dart';

import 'package:json_annotation/json_annotation.dart';
part 'single_component_response_of_destiny_vendor_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyVendorComponent {

	/// This component contains essential&#x2F;summary information about the vendor.
	@JsonKey(name:'data')
	DestinyVendorComponent data;

	@JsonKey(name:'privacy')
	int privacy;
	SingleComponentResponseOfDestinyVendorComponent();

	factory SingleComponentResponseOfDestinyVendorComponent.fromJson(Map<String, dynamic> json) => _$SingleComponentResponseOfDestinyVendorComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyVendorComponentToJson(this);
}
