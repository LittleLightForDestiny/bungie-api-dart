import 'destiny_location_release_definition.dart';
class DestinyLocationDefinition{
	int vendorHash;
	List<DestinyLocationReleaseDefinition> locationReleases;
	int hash;
	int index;
	bool redacted;
	DestinyLocationDefinition(
		int this.vendorHash,
		List<DestinyLocationReleaseDefinition> this.locationReleases,
		int this.hash,
		int this.index,
		bool this.redacted,
	);

	static DestinyLocationDefinition fromJson(Map<String, dynamic> data){
		return new DestinyLocationDefinition(
				data['vendorHash'],
				DestinyLocationReleaseDefinition.fromList(data['locationReleases']),
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyLocationDefinition> fromList(List<dynamic> data){
		List<DestinyLocationDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyLocationDefinition.fromJson(item));
    });
    return list;
	}
}