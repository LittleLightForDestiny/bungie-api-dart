import 'package:json_annotation/json_annotation.dart';

import 'destiny_display_properties_definition.dart';
import '../enums/destiny_scope.dart';
import 'destiny_presentation_child_block.dart';
import '../enums/destiny_record_value_style.dart';
import 'destiny_record_title_block.dart';
import 'destiny_record_completion_block.dart';
import 'schema_record_state_block.dart';
import 'destiny_presentation_node_requirements_block.dart';
import 'destiny_record_expiration_block.dart';
import 'destiny_record_interval_block.dart';
import 'destiny_item_quantity.dart';
import '../enums/destiny_presentation_node_type.dart';

part 'destiny_record_definition.g.dart';

@JsonSerializable()
class DestinyRecordDefinition{	
	DestinyRecordDefinition();

	factory DestinyRecordDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyRecordDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyRecordDefinitionToJson(this);
	
	/// Many Destiny*Definition contracts - the "first order" entities of Destiny that have their own tables in the Manifest Database - also have displayable information. This is the base class for that display information.
	@JsonKey(name:'displayProperties')
	DestinyDisplayPropertiesDefinition? displayProperties;
	
	/// Indicates whether this Record's state is determined on a per-character or on an account-wide basis.
	@JsonKey(name:'scope',fromJson:decodeDestinyScope,toJson:encodeDestinyScope)
	DestinyScope? scope;
	
	@JsonKey(name:'presentationInfo')
	DestinyPresentationChildBlock? presentationInfo;
	
	@JsonKey(name:'loreHash')
	int? loreHash;
	
	@JsonKey(name:'objectiveHashes')
	List<int>? objectiveHashes;
	
	@JsonKey(name:'recordValueStyle',fromJson:decodeDestinyRecordValueStyle,toJson:encodeDestinyRecordValueStyle)
	DestinyRecordValueStyle? recordValueStyle;
	
	@JsonKey(name:'forTitleGilding')
	bool? forTitleGilding;
	
	@JsonKey(name:'titleInfo')
	DestinyRecordTitleBlock? titleInfo;
	
	@JsonKey(name:'completionInfo')
	DestinyRecordCompletionBlock? completionInfo;
	
	@JsonKey(name:'stateInfo')
	SchemaRecordStateBlock? stateInfo;
	
	/// Presentation nodes can be restricted by various requirements. This defines the rules of those requirements, and the message(s) to be shown if these requirements aren't met.
	@JsonKey(name:'requirements')
	DestinyPresentationNodeRequirementsBlock? requirements;
	
	/// If this record has an expiration after which it cannot be earned, this is some information about that expiration.
	@JsonKey(name:'expirationInfo')
	DestinyRecordExpirationBlock? expirationInfo;
	
	/// Some records have multiple 'interval' objectives, and the record may be claimed at each completed interval
	@JsonKey(name:'intervalInfo')
	DestinyRecordIntervalBlock? intervalInfo;
	
	/// If there is any publicly available information about rewards earned for achieving this record, this is the list of those items.
	///  However, note that some records intentionally have "hidden" rewards. These will not be returned in this list.
	@JsonKey(name:'rewardItems')
	List<DestinyItemQuantity>? rewardItems;
	
	@JsonKey(name:'presentationNodeType',fromJson:decodeDestinyPresentationNodeType,toJson:encodeDestinyPresentationNodeType)
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