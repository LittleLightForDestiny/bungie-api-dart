import 'package:json_annotation/json_annotation.dart';


part 'destiny_item_version_definition.g.dart';

/// The version definition currently just holds a reference to the power cap.
@JsonSerializable()
class DestinyItemVersionDefinition{	
	DestinyItemVersionDefinition();

	factory DestinyItemVersionDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyItemVersionDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyItemVersionDefinitionToJson(this);
	
	/// A reference to the power cap for this item version.
	@JsonKey(name:'powerCapHash')
	int? powerCapHash;
}