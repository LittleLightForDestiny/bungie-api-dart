
import 'package:json_annotation/json_annotation.dart';
part 'destiny_vendor_action_definition.g.dart';

/// If a vendor can ever end up performing actions, these are the properties that will be related to those actions. I&#39;m not going to bother documenting this yet, as it is unused and unclear if it will ever be used... but in case it is ever populated and someone finds it useful, it is defined here.
@JsonSerializable()
class DestinyVendorActionDefinition {

	@JsonKey(name:'description')
	String description;

	@JsonKey(name:'executeSeconds')
	int executeSeconds;

	@JsonKey(name:'icon')
	String icon;

	@JsonKey(name:'name')
	String name;

	@JsonKey(name:'verb')
	String verb;

	@JsonKey(name:'isPositive')
	bool isPositive;

	@JsonKey(name:'actionId')
	String actionId;

	@JsonKey(name:'actionHash')
	int actionHash;

	@JsonKey(name:'autoPerformAction')
	bool autoPerformAction;
	DestinyVendorActionDefinition();

	factory DestinyVendorActionDefinition.fromJson(Map<String, dynamic> json) => _$DestinyVendorActionDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyVendorActionDefinitionToJson(this);
}
