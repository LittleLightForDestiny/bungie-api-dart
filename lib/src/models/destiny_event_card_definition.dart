import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_display_properties_definition.dart';
import 'destiny_color.dart';
import 'destiny_event_card_images.dart';

part 'destiny_event_card_definition.g.dart';

/// Defines the properties of an &#39;Event Card&#39; in Destiny 2, to coincide with a seasonal event for additional challenges, premium rewards, a new seal, and a special title. For example: Solstice of Heroes 2022.
@JsonSerializable()
class DestinyEventCardDefinition{	
	DestinyEventCardDefinition();

	
	/// Many Destiny*Definition contracts - the "first order" entities of Destiny that have their own tables in the Manifest Database - also have displayable information. This is the base class for that display information.
	@JsonKey(name:'displayProperties')
	DestinyDisplayPropertiesDefinition? displayProperties;
	
	@JsonKey(name:'linkRedirectPath')
	String? linkRedirectPath;
	
	/// Represents a color whose RGBA values are all represented as values between 0 and 255.
	@JsonKey(name:'color')
	DestinyColor? color;
	
	@JsonKey(name:'images')
	DestinyEventCardImages? images;
	
	@JsonKey(name:'triumphsPresentationNodeHash')
	int? triumphsPresentationNodeHash;
	
	@JsonKey(name:'sealPresentationNodeHash')
	int? sealPresentationNodeHash;
	
	@JsonKey(name:'ticketCurrencyItemHash')
	int? ticketCurrencyItemHash;
	
	@JsonKey(name:'ticketVendorHash')
	int? ticketVendorHash;
	
	@JsonKey(name:'ticketVendorCategoryHash')
	int? ticketVendorCategoryHash;
	
	@JsonKey(name:'endTime')
	String? endTime;
	
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

	factory DestinyEventCardDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyEventCardDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyEventCardDefinitionToJson(this);

	static Future<DestinyEventCardDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyEventCardDefinition>((json)=>DestinyEventCardDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}