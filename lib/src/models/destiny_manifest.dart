import 'package:json_annotation/json_annotation.dart';

import 'gear_asset_data_base_definition.dart';
import 'image_pyramid_entry.dart';

part 'destiny_manifest.g.dart';

/// DestinyManifest is the external-facing contract for just the properties needed by those calling the Destiny Platform.
@JsonSerializable()
class DestinyManifest{
	
	DestinyManifest();

	factory DestinyManifest.fromJson(Map<String, dynamic> json) => _$DestinyManifestFromJson(json);

	@JsonKey(name:'version')
	String version;
	@JsonKey(name:'mobileAssetContentPath')
	String mobileAssetContentPath;
	@JsonKey(name:'mobileGearAssetDataBases')
	List<GearAssetDataBaseDefinition> mobileGearAssetDataBases;
	@JsonKey(name:'mobileWorldContentPaths')
	Map<String, String> mobileWorldContentPaths;
	@JsonKey(name:'jsonWorldContentPaths')
	Map<String, String> jsonWorldContentPaths;
	@JsonKey(name:'mobileClanBannerDatabasePath')
	String mobileClanBannerDatabasePath;
	@JsonKey(name:'mobileGearCDN')
	Map<String, String> mobileGearCdn;
	/// Information about the "Image Pyramid" for Destiny icons. Where possible, we create smaller versions of Destiny icons. These are found as subfolders under the location of the "original/full size" Destiny images, with the same file name and extension as the original image itself. (this lets us avoid sending largely redundant path info with every entity, at the expense of the smaller versions of the image being less discoverable)
	@JsonKey(name:'iconImagePyramidInfo')
	List<ImagePyramidEntry> iconImagePyramidInfo;

	
	
	Map<String, dynamic> toJson() => _$DestinyManifestToJson(this);
}