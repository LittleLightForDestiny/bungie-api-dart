import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_vendor_action_definition.g.dart';

/// If a vendor can ever end up performing actions, these are the properties that will be related to those actions. I&#39;m not going to bother documenting this yet, as it is unused and unclear if it will ever be used... but in case it is ever populated and someone finds it useful, it is defined here.
@JsonSerializable()
class DestinyVendorActionDefinition{	
	DestinyVendorActionDefinition();

	
	@JsonKey(name:'description')
	String? description;
	
	@JsonKey(name:'executeSeconds')
	int? executeSeconds;
	
	@JsonKey(name:'icon')
	String? icon;
	
	@JsonKey(name:'name')
	String? name;
	
	@JsonKey(name:'verb')
	String? verb;
	
	@JsonKey(name:'isPositive')
	bool? isPositive;
	
	@JsonKey(name:'actionId')
	String? actionId;
	
	@JsonKey(name:'actionHash')
	int? actionHash;
	
	@JsonKey(name:'autoPerformAction')
	bool? autoPerformAction;

	factory DestinyVendorActionDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyVendorActionDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyVendorActionDefinitionToJson(this);

	static Future<DestinyVendorActionDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyVendorActionDefinition>((json)=>DestinyVendorActionDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}