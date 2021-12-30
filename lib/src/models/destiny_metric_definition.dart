import 'package:json_annotation/json_annotation.dart';

import 'destiny_display_properties_definition.dart';
import '../enums/destiny_presentation_node_type.dart';

part 'destiny_metric_definition.g.dart';

@JsonSerializable()
class DestinyMetricDefinition{	
	DestinyMetricDefinition();

	factory DestinyMetricDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyMetricDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyMetricDefinitionToJson(this);
	
	/// Many Destiny*Definition contracts - the "first order" entities of Destiny that have their own tables in the Manifest Database - also have displayable information. This is the base class for that display information.
	@JsonKey(name:'displayProperties')
	DestinyDisplayPropertiesDefinition? displayProperties;
	
	@JsonKey(name:'trackingObjectiveHash')
	int? trackingObjectiveHash;
	
	@JsonKey(name:'lowerValueIsBetter')
	bool? lowerValueIsBetter;
	
	@JsonKey(name:'presentationNodeType',unknownEnumValue:DestinyPresentationNodeType.ProtectedInvalidEnumValue)
	DestinyPresentationNodeType? presentationNodeType;
	
	@JsonKey(name:'traitIds')
	List<String>? traitIds;
	
	@JsonKey(name:'traitHashes')
	List<int>? traitHashes;
	
	/// A quick reference to presentation nodes that have this node as a child. Presentation nodes can be parented under multiple parents.
	@JsonKey(name:'parentNodeHashes')
	List<int>? parentNodeHashes;
	
	/// The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
	/// When entities refer to each other in Destiny content, it is this hash that they are referring to.
	@JsonKey(name:'hash')
	int? hash;
	
	/// The index of the entity as it was found in the investment tables.
	@JsonKey(name:'index')
	int? index;
	
	/// If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry!
	@JsonKey(name:'redacted')
	bool? redacted;
}