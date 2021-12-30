import 'package:json_annotation/json_annotation.dart';


part 'destiny_season_preview_image_definition.g.dart';

/// Defines the thumbnail icon, high-res image, and video link for promotional images
@JsonSerializable()
class DestinySeasonPreviewImageDefinition{	
	DestinySeasonPreviewImageDefinition();

	factory DestinySeasonPreviewImageDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinySeasonPreviewImageDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinySeasonPreviewImageDefinitionToJson(this);
	
	/// A thumbnail icon path to preview seasonal content, probably 480x270.
	@JsonKey(name:'thumbnailImage')
	String? thumbnailImage;
	
	/// An optional path to a high-resolution image, probably 1920x1080.
	@JsonKey(name:'highResImage')
	String? highResImage;
}