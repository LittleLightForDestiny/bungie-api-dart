import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_vendor_service_definition.g.dart';

/// When a vendor provides services, this is the localized name of those services.
@JsonSerializable()
class DestinyVendorServiceDefinition{	
	DestinyVendorServiceDefinition();

	
	/// The localized name of a service provided.
	@JsonKey(name:'name')
	String? name;

	factory DestinyVendorServiceDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyVendorServiceDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyVendorServiceDefinitionToJson(this);

	static Future<DestinyVendorServiceDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyVendorServiceDefinition>((json)=>DestinyVendorServiceDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}