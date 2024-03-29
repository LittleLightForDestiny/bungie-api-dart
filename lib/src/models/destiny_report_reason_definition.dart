import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_display_properties_definition.dart';

part 'destiny_report_reason_definition.g.dart';

/// A specific reason for being banned. Only accessible under the related category (DestinyReportReasonCategoryDefinition) under which it is shown. Note that this means that report reasons&#39; reasonHash are not globally unique: and indeed, entries like &quot;Other&quot; are defined under most categories for example.
@JsonSerializable()
class DestinyReportReasonDefinition{	
	DestinyReportReasonDefinition();

	
	/// The identifier for the reason: they are only guaranteed unique under the Category in which they are found.
	@JsonKey(name:'reasonHash')
	int? reasonHash;
	
	/// Many Destiny*Definition contracts - the "first order" entities of Destiny that have their own tables in the Manifest Database - also have displayable information. This is the base class for that display information.
	@JsonKey(name:'displayProperties')
	DestinyDisplayPropertiesDefinition? displayProperties;

	factory DestinyReportReasonDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyReportReasonDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyReportReasonDefinitionToJson(this);

	static Future<DestinyReportReasonDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyReportReasonDefinition>((json)=>DestinyReportReasonDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}