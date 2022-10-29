import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_vendor_group_reference.g.dart';

@JsonSerializable()
class DestinyVendorGroupReference{	
	DestinyVendorGroupReference();

	
	/// The DestinyVendorGroupDefinition to which this Vendor can belong.
	@JsonKey(name:'vendorGroupHash')
	int? vendorGroupHash;

	factory DestinyVendorGroupReference.fromJson(Map<String, dynamic> json) {
		return _$DestinyVendorGroupReferenceFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyVendorGroupReferenceToJson(this);

	static Future<DestinyVendorGroupReference> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyVendorGroupReference>((json)=>DestinyVendorGroupReference.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}