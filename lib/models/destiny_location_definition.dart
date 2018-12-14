import 'destiny_location_release_definition.dart';
class DestinyLocationDefinition{
	int vendorHash;
	List<DestinyLocationReleaseDefinition> locationReleases;
	int hash;
	int index;
	bool redacted;
	DestinyLocationDefinition(
		this.vendorHash,
		this.locationReleases,
		this.hash,
		this.index,
		this.redacted,
	);

	static DestinyLocationDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyLocationDefinition(
				data['vendorHash'],
				data['locationReleases'] != null ? DestinyLocationReleaseDefinition.fromList(data['locationReleases']) : null,
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyLocationDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyLocationDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyLocationDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['vendorHash'] = this.vendorHash;
			data['locationReleases'] = this.locationReleases.map((item)=>item.toMap()).toList();
			data['hash'] = this.hash;
			data['index'] = this.index;
			data['redacted'] = this.redacted;
		return data;
	}
}