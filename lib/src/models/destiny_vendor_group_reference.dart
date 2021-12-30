import 'package:json_annotation/json_annotation.dart';


part 'destiny_vendor_group_reference.g.dart';

@JsonSerializable()
class DestinyVendorGroupReference{	
	DestinyVendorGroupReference();

	factory DestinyVendorGroupReference.fromJson(Map<String, dynamic> json) {
		return _$DestinyVendorGroupReferenceFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyVendorGroupReferenceToJson(this);
	
	/// The DestinyVendorGroupDefinition to which this Vendor can belong.
	@JsonKey(name:'vendorGroupHash')
	int? vendorGroupHash;
}