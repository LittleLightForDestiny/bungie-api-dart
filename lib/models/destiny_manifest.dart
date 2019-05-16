import 'gear_asset_data_base_definition.dart';
import 'image_pyramid_entry.dart';

/** DestinyManifest is the external-facing contract for just the properties needed by those calling the Destiny Platform. */
class DestinyManifest{
	
	/**  */
	String version;
	
	/**  */
	String mobileAssetContentPath;
	
	/**  */
	List<GearAssetDataBaseDefinition> mobileGearAssetDataBases;
	
	/**  */
	Map<String, String> mobileWorldContentPaths;
	
	/**  */
	Map<String, String> jsonWorldContentPaths;
	
	/**  */
	String mobileClanBannerDatabasePath;
	
	/**  */
	Map<String, String> mobileGearCdn;
	
	/** Information about the "Image Pyramid" for Destiny icons. Where possible, we create smaller versions of Destiny icons. These are found as subfolders under the location of the "original/full size" Destiny images, with the same file name and extension as the original image itself. (this lets us avoid sending largely redundant path info with every entity, at the expense of the smaller versions of the image being less discoverable) */
	List<ImagePyramidEntry> iconImagePyramidInfo;
	DestinyManifest(
		this.version,
		this.mobileAssetContentPath,
		this.mobileGearAssetDataBases,
		this.mobileWorldContentPaths,
		this.jsonWorldContentPaths,
		this.mobileClanBannerDatabasePath,
		this.mobileGearCdn,
		this.iconImagePyramidInfo,
	);

	static DestinyManifest fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyManifest(
				data['version'],
				data['mobileAssetContentPath'],
				data['mobileGearAssetDataBases'] != null ? GearAssetDataBaseDefinition.fromList(data['mobileGearAssetDataBases']) : null,
				data['mobileWorldContentPaths'] != null ? Map<String, String>.from(data['mobileWorldContentPaths'].map((k, v)=>MapEntry(k, v))) : null,
				data['jsonWorldContentPaths'] != null ? Map<String, String>.from(data['jsonWorldContentPaths'].map((k, v)=>MapEntry(k, v))) : null,
				data['mobileClanBannerDatabasePath'],
				data['mobileGearCDN'] != null ? Map<String, String>.from(data['mobileGearCDN'].map((k, v)=>MapEntry(k, v))) : null,
				data['iconImagePyramidInfo'] != null ? ImagePyramidEntry.fromList(data['iconImagePyramidInfo']) : null,
		);
	}

	static List<DestinyManifest> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyManifest> list = new List();
    data.forEach((item) {
      list.add(DestinyManifest.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['version'] = this.version;
			data['mobileAssetContentPath'] = this.mobileAssetContentPath;
			data['mobileGearAssetDataBases'] = this.mobileGearAssetDataBases != null? this.mobileGearAssetDataBases.map((item)=>item.toMap()).toList() : null;
			data['mobileWorldContentPaths'] = this.mobileWorldContentPaths != null? this.mobileWorldContentPaths.map((i, v)=>MapEntry(i, v)) : null;
			data['jsonWorldContentPaths'] = this.jsonWorldContentPaths != null? this.jsonWorldContentPaths.map((i, v)=>MapEntry(i, v)) : null;
			data['mobileClanBannerDatabasePath'] = this.mobileClanBannerDatabasePath;
			data['mobileGearCDN'] = this.mobileGearCdn != null? this.mobileGearCdn.map((i, v)=>MapEntry(i, v)) : null;
			data['iconImagePyramidInfo'] = this.iconImagePyramidInfo != null? this.iconImagePyramidInfo.map((item)=>item.toMap()).toList() : null;
		return data;
	}
}