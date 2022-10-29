import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_item_version_definition.g.dart';

/// The version definition currently just holds a reference to the power cap.
@JsonSerializable()
class DestinyItemVersionDefinition{	
	DestinyItemVersionDefinition();

	
	/// A reference to the power cap for this item version.
	@JsonKey(name:'powerCapHash')
	int? powerCapHash;

	factory DestinyItemVersionDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyItemVersionDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyItemVersionDefinitionToJson(this);

	static Future<DestinyItemVersionDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyItemVersionDefinition>((json)=>DestinyItemVersionDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}