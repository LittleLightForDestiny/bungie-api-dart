
import 'package:json_annotation/json_annotation.dart';
part 'destiny_display_properties_definition.g.dart';

/// Many Destiny*Definition contracts - the &quot;first order&quot; entities of Destiny that have their own tables in the Manifest Database - also have displayable information. This is the base class for that display information.
@JsonSerializable()
class DestinyDisplayPropertiesDefinition {

	@JsonKey(name:'description')
	String description;

	@JsonKey(name:'name')
	String name;

	/// Note that &quot;icon&quot; is sometimes misleading, and should be interpreted in the context of the entity. For instance, in Destiny 1 the DestinyRecordBookDefinition&#39;s icon was a big picture of a book.
	/// But usually, it will be a small square image that you can use as... well, an icon.
	/// They are currently represented as 96px x 96px images.
	@JsonKey(name:'icon')
	String icon;

	@JsonKey(name:'hasIcon')
	bool hasIcon;
	DestinyDisplayPropertiesDefinition();

	factory DestinyDisplayPropertiesDefinition.fromJson(Map<String, dynamic> json) => _$DestinyDisplayPropertiesDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyDisplayPropertiesDefinitionToJson(this);
}
