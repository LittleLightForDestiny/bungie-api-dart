import 'gear_asset_data_base_definition.dart';
class DestinyManifest{
	String version;
	String mobileAssetContentPath;
	List<GearAssetDataBaseDefinition> mobileGearAssetDataBases;
	Map<String, dynamic> mobileWorldContentPaths;
	String mobileClanBannerDatabasePath;
	Map<String, dynamic> mobileGearCdn;
	DestinyManifest(
		String this.version,
		String this.mobileAssetContentPath,
		List<GearAssetDataBaseDefinition> this.mobileGearAssetDataBases,
		Map<String, dynamic> this.mobileWorldContentPaths,
		String this.mobileClanBannerDatabasePath,
		Map<String, dynamic> this.mobileGearCdn,
	);

	static DestinyManifest fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyManifest(
				data['version'],
				data['mobileAssetContentPath'],
				GearAssetDataBaseDefinition.fromList(data['mobileGearAssetDataBases']),
				data['mobileWorldContentPaths'],
				data['mobileClanBannerDatabasePath'],
				data['mobileGearCDN'],
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
			data['version'] = version;
			data['mobileAssetContentPath'] = mobileAssetContentPath;
			data['mobileGearAssetDataBases'] = mobileGearAssetDataBases.map((item)=>item.toMap());
			data['mobileWorldContentPaths'] = mobileWorldContentPaths;
			data['mobileClanBannerDatabasePath'] = mobileClanBannerDatabasePath;
			data['mobileGearCDN'] = mobileGearCdn;
	}
}