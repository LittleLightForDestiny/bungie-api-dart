import 'destiny_display_properties_definition.dart';
import 'destiny_report_reason_definition.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_report_reason_category_definition.g.dart';

/// If you&#39;re going to report someone for a Terms of Service violation, you need to choose a category and reason for the report. This definition holds both the categories and the reasons within those categories, for simplicity and my own laziness&#39; sake.
/// Note tha this means that, to refer to a Reason by reasonHash, you need a combination of the reasonHash *and* the associated ReasonCategory&#39;s hash: there are some reasons defined under multiple categories.
@JsonSerializable()
class DestinyReportReasonCategoryDefinition {

	/// Many Destiny*Definition contracts - the &quot;first order&quot; entities of Destiny that have their own tables in the Manifest Database - also have displayable information. This is the base class for that display information.
	@JsonKey(name:'displayProperties')
	DestinyDisplayPropertiesDefinition displayProperties;

	/// The specific reasons for the report under this category.
	@JsonKey(name:'reasons')
	Map<String, DestinyReportReasonDefinition> reasons;

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
	DestinyReportReasonCategoryDefinition();

	factory DestinyReportReasonCategoryDefinition.fromJson(Map<String, dynamic> json) => _$DestinyReportReasonCategoryDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyReportReasonCategoryDefinitionToJson(this);
}
