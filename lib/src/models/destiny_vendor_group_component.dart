import 'destiny_vendor_group.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_vendor_group_component.g.dart';

/// This component returns references to all of the Vendors in the response, grouped by categorizations that Bungie has deemed to be interesting, in the order in which both the groups and the vendors within that group should be rendered.
@JsonSerializable()
class DestinyVendorGroupComponent {

	/// The ordered list of groups being returned.
	@JsonKey(name:'groups')
	List<DestinyVendorGroup> groups;
	DestinyVendorGroupComponent();

	factory DestinyVendorGroupComponent.fromJson(Map<String, dynamic> json) => _$DestinyVendorGroupComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyVendorGroupComponentToJson(this);
}
