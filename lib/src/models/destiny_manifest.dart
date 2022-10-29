import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'gear_asset_data_base_definition.dart';
import 'image_pyramid_entry.dart';

part 'destiny_manifest.g.dart';

/// DestinyManifest is the external-facing contract for just the properties needed by those calling the Destiny Platform.
@JsonSerializable()
class DestinyManifest{	
	DestinyManifest();

	
	@JsonKey(name:'version')
	String? version;
	
	@JsonKey(name:'mobileAssetContentPath')
	String? mobileAssetContentPath;
	
	@JsonKey(name:'mobileGearAssetDataBases')
	List<GearAssetDataBaseDefinition>? mobileGearAssetDataBases;
	
	@JsonKey(name:'mobileWorldContentPaths')
	Map<String, String>? mobileWorldContentPaths;
	
	/// This points to the generated JSON that contains all the Definitions. Each key is a locale. The value is a path to the aggregated world definitions (warning: large file!)
	@JsonKey(name:'jsonWorldContentPaths')
	Map<String, String>? jsonWorldContentPaths;
	
	/// This points to the generated JSON that contains all the Definitions. Each key is a locale. The value is a dictionary, where the key is a definition type by name, and the value is the path to the file for that definition. WARNING: This is unsafe and subject to change - do not depend on data in these files staying around long-term.
	@JsonKey(name:'jsonWorldComponentContentPaths')
	Map<String, Map<String, String>>? jsonWorldComponentContentPaths;
	
	@JsonKey(name:'mobileClanBannerDatabasePath')
	String? mobileClanBannerDatabasePath;
	
	@JsonKey(name:'mobileGearCDN')
	Map<String, String>? mobileGearCdn;
	
	/// Information about the "Image Pyramid" for Destiny icons. Where possible, we create smaller versions of Destiny icons. These are found as subfolders under the location of the "original/full size" Destiny images, with the same file name and extension as the original image itself. (this lets us avoid sending largely redundant path info with every entity, at the expense of the smaller versions of the image being less discoverable)
	@JsonKey(name:'iconImagePyramidInfo')
	List<ImagePyramidEntry>? iconImagePyramidInfo;

	factory DestinyManifest.fromJson(Map<String, dynamic> json) {
		return _$DestinyManifestFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyManifestToJson(this);

	static Future<DestinyManifest> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyManifest>((json)=>DestinyManifest.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}