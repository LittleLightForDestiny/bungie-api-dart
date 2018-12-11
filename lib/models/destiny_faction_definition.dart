import 'destiny_display_properties_definition.dart';
import 'destiny_faction_vendor_definition.dart';
class DestinyFactionDefinition{
	DestinyDisplayPropertiesDefinition displayProperties;
	int progressionHash;
	Map<int, dynamic> tokenValues;
	int rewardItemHash;
	int rewardVendorHash;
	List<DestinyFactionVendorDefinition> vendors;
	int hash;
	int index;
	bool redacted;
	DestinyFactionDefinition(
		DestinyDisplayPropertiesDefinition this.displayProperties,
		int this.progressionHash,
		Map<int, dynamic> this.tokenValues,
		int this.rewardItemHash,
		int this.rewardVendorHash,
		List<DestinyFactionVendorDefinition> this.vendors,
		int this.hash,
		int this.index,
		bool this.redacted,
	);

	static DestinyFactionDefinition fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyFactionDefinition(
				DestinyDisplayPropertiesDefinition.fromJson(data['displayProperties']),
				data['progressionHash'],
				data['tokenValues'],
				data['rewardItemHash'],
				data['rewardVendorHash'],
				DestinyFactionVendorDefinition.fromList(data['vendors']),
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyFactionDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyFactionDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyFactionDefinition.fromJson(item));
    });
    return list;
	}
}