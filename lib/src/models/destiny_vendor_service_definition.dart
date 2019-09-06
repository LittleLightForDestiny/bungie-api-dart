
import 'package:json_annotation/json_annotation.dart';
part 'destiny_vendor_service_definition.g.dart';

/// When a vendor provides services, this is the localized name of those services.
@JsonSerializable()
class DestinyVendorServiceDefinition {

	/// The localized name of a service provided.
	@JsonKey(name:'name')
	String name;
	DestinyVendorServiceDefinition();

	factory DestinyVendorServiceDefinition.fromJson(Map<String, dynamic> json) => _$DestinyVendorServiceDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyVendorServiceDefinitionToJson(this);
}
