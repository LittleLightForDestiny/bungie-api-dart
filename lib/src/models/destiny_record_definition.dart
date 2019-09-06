import 'destiny_display_properties_definition.dart';
import 'destiny_presentation_child_block.dart';
import 'destiny_record_title_block.dart';
import 'destiny_record_completion_block.dart';
import 'schema_record_state_block.dart';
import 'destiny_presentation_node_requirements_block.dart';
import 'destiny_record_expiration_block.dart';
import 'destiny_item_quantity.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_record_definition.g.dart';

@JsonSerializable()
class DestinyRecordDefinition {

	/// Many Destiny*Definition contracts - the &quot;first order&quot; entities of Destiny that have their own tables in the Manifest Database - also have displayable information. This is the base class for that display information.
	@JsonKey(name:'displayProperties')
	DestinyDisplayPropertiesDefinition displayProperties;

	/// Indicates whether this Record&#39;s state is determined on a per-character or on an account-wide basis.
	@JsonKey(name:'scope')
	int scope;

	@JsonKey(name:'presentationInfo')
	DestinyPresentationChildBlock presentationInfo;

	@JsonKey(name:'loreHash')
	int loreHash;

	@JsonKey(name:'objectiveHashes')
	List<int> objectiveHashes;

	@JsonKey(name:'recordValueStyle')
	int recordValueStyle;

	@JsonKey(name:'titleInfo')
	DestinyRecordTitleBlock titleInfo;

	@JsonKey(name:'completionInfo')
	DestinyRecordCompletionBlock completionInfo;

	@JsonKey(name:'stateInfo')
	SchemaRecordStateBlock stateInfo;

	/// Presentation nodes can be restricted by various requirements. This defines the rules of those requirements, and the message(s) to be shown if these requirements aren&#39;t met.
	@JsonKey(name:'requirements')
	DestinyPresentationNodeRequirementsBlock requirements;

	/// If this record has an expiration after which it cannot be earned, this is some information about that expiration.
	@JsonKey(name:'expirationInfo')
	DestinyRecordExpirationBlock expirationInfo;

	/// If there is any publicly available information about rewards earned for achieving this record, this is the list of those items.
	///  However, note that some records intentionally have &quot;hidden&quot; rewards. These will not be returned in this list.
	@JsonKey(name:'rewardItems')
	List<DestinyItemQuantity> rewardItems;

	/// The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
	/// When entities refer to each other in Destiny content, it is this hash that they are referring to.
	@JsonKey(name:'hash')
	int hash;

	/// The index of the entity as it was found in the investment tables.
	@JsonKey(name:'index')
	int index;

	/// If this is true, then there is an entity with this identifier&#x2F;type combination, but BNet is not yet allowed to show it. Sorry!
	@JsonKey(name:'redacted')
	bool redacted;
	DestinyRecordDefinition();

	factory DestinyRecordDefinition.fromJson(Map<String, dynamic> json) => _$DestinyRecordDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyRecordDefinitionToJson(this);
}
