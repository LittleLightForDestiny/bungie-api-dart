import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_vendor_group.g.dart';

/// Represents a specific group of vendors that can be rendered in the recommended order.
/// How do we figure out this order? It&#39;s a long story, and will likely get more complicated over time.
@JsonSerializable()
class DestinyVendorGroup{	
	DestinyVendorGroup();

	
	@JsonKey(name:'vendorGroupHash')
	int? vendorGroupHash;
	
	/// The ordered list of vendors within a particular group.
	@JsonKey(name:'vendorHashes')
	List<int>? vendorHashes;

	factory DestinyVendorGroup.fromJson(Map<String, dynamic> json) {
		return _$DestinyVendorGroupFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyVendorGroupToJson(this);

	static Future<DestinyVendorGroup> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyVendorGroup>((json)=>DestinyVendorGroup.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}