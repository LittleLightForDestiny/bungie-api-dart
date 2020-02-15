import 'package:json_annotation/json_annotation.dart';


part 'destiny_vendor_service_definition.g.dart';

/// When a vendor provides services, this is the localized name of those services.
@JsonSerializable()
class DestinyVendorServiceDefinition{
	
	DestinyVendorServiceDefinition();

	factory DestinyVendorServiceDefinition.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyVendorServiceDefinitionFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	/// The localized name of a service provided.
	@JsonKey(name:'name')
	String name;

	
	
	Map<String, dynamic> toJson() => _$DestinyVendorServiceDefinitionToJson(this);
}