import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_vendor_group.dart';

part 'destiny_vendor_group_component.g.dart';

/// This component returns references to all of the Vendors in the response, grouped by categorizations that Bungie has deemed to be interesting, in the order in which both the groups and the vendors within that group should be rendered.
@JsonSerializable()
class DestinyVendorGroupComponent{	
	DestinyVendorGroupComponent();

	
	/// The ordered list of groups being returned.
	@JsonKey(name:'groups')
	List<DestinyVendorGroup>? groups;

	factory DestinyVendorGroupComponent.fromJson(Map<String, dynamic> json) {
		return _$DestinyVendorGroupComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyVendorGroupComponentToJson(this);

	static Future<DestinyVendorGroupComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyVendorGroupComponent>((json)=>DestinyVendorGroupComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}