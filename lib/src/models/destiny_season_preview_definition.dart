import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_season_preview_image_definition.dart';

part 'destiny_season_preview_definition.g.dart';

/// Defines the promotional text, images, and links to preview this season.
@JsonSerializable()
class DestinySeasonPreviewDefinition{	
	DestinySeasonPreviewDefinition();

	
	/// A localized description of the season.
	@JsonKey(name:'description')
	String? description;
	
	/// A relative path to learn more about the season. Web browsers should be automatically redirected to the user's Bungie.net locale. For example: "/SeasonOfTheChosen" will redirect to "/7/en/Seasons/SeasonOfTheChosen" for English users.
	@JsonKey(name:'linkPath')
	String? linkPath;
	
	/// An optional link to a localized video, probably YouTube.
	@JsonKey(name:'videoLink')
	String? videoLink;
	
	/// A list of images to preview the seasonal content. Should have at least three to show.
	@JsonKey(name:'images')
	List<DestinySeasonPreviewImageDefinition>? images;

	factory DestinySeasonPreviewDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinySeasonPreviewDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinySeasonPreviewDefinitionToJson(this);

	static Future<DestinySeasonPreviewDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinySeasonPreviewDefinition>((json)=>DestinySeasonPreviewDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}