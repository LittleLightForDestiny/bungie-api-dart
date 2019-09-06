
import 'package:json_annotation/json_annotation.dart';
part 'destiny_vendor_group.g.dart';

/// Represents a specific group of vendors that can be rendered in the recommended order.
/// How do we figure out this order? It&#39;s a long story, and will likely get more complicated over time.
@JsonSerializable()
class DestinyVendorGroup {

	@JsonKey(name:'vendorGroupHash')
	int vendorGroupHash;

	/// The ordered list of vendors within a particular group.
	@JsonKey(name:'vendorHashes')
	List<int> vendorHashes;
	DestinyVendorGroup();

	factory DestinyVendorGroup.fromJson(Map<String, dynamic> json) => _$DestinyVendorGroupFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyVendorGroupToJson(this);
}
