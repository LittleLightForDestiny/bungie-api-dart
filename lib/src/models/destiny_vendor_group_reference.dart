import 'package:json_annotation/json_annotation.dart';


part 'destiny_vendor_group_reference.g.dart';

@JsonSerializable()
class DestinyVendorGroupReference{
	
	DestinyVendorGroupReference();

	factory DestinyVendorGroupReference.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyVendorGroupReferenceFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	/// The DestinyVendorGroupDefinition to which this Vendor can belong.
	@JsonKey(name:'vendorGroupHash')
	int vendorGroupHash;

	
	
	Map<String, dynamic> toJson() => _$DestinyVendorGroupReferenceToJson(this);
}