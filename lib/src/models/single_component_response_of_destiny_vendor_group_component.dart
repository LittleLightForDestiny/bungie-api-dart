import 'package:json_annotation/json_annotation.dart';

import 'destiny_vendor_group_component.dart';
import '../enums/component_privacy_setting.dart';

part 'single_component_response_of_destiny_vendor_group_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyVendorGroupComponent{
	
	SingleComponentResponseOfDestinyVendorGroupComponent();

	factory SingleComponentResponseOfDestinyVendorGroupComponent.fromJson(Map<String, dynamic> json) {
		return _$SingleComponentResponseOfDestinyVendorGroupComponentFromJson(json);
	}

	/// This component returns references to all of the Vendors in the response, grouped by categorizations that Bungie has deemed to be interesting, in the order in which both the groups and the vendors within that group should be rendered.
	@JsonKey(name:'data')
	DestinyVendorGroupComponent? data;
	@JsonKey(name:'privacy',unknownEnumValue:ComponentPrivacySetting.ProtectedInvalidEnumValue)
	ComponentPrivacySetting? privacy;
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool? disabled;

	
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyVendorGroupComponentToJson(this);
}