
import 'package:json_annotation/json_annotation.dart';
part 'destiny_vendor_group_reference.g.dart';

@JsonSerializable()
class DestinyVendorGroupReference {

	/// The DestinyVendorGroupDefinition to which this Vendor can belong.
	@JsonKey(name:'vendorGroupHash')
	int vendorGroupHash;
	DestinyVendorGroupReference();

	factory DestinyVendorGroupReference.fromJson(Map<String, dynamic> json) => _$DestinyVendorGroupReferenceFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyVendorGroupReferenceToJson(this);
}
