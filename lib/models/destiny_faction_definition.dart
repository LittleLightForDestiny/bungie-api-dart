import 'destiny_display_properties_definition.dart';
import 'destiny_faction_vendor_definition.dart';
class DestinyFactionDefinition{
	DestinyDisplayPropertiesDefinition displayProperties;
	int progressionHash;
	Map<String, int> tokenValues;
	int rewardItemHash;
	int rewardVendorHash;
	List<DestinyFactionVendorDefinition> vendors;
	int hash;
	int index;
	bool redacted;
	DestinyFactionDefinition(
		this.displayProperties,
		this.progressionHash,
		this.tokenValues,
		this.rewardItemHash,
		this.rewardVendorHash,
		this.vendors,
		this.hash,
		this.index,
		this.redacted,
	);

	static DestinyFactionDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyFactionDefinition(
				data['displayProperties'] != null ? DestinyDisplayPropertiesDefinition.fromMap(data['displayProperties']) : null,
				data['progressionHash'],
				data['tokenValues'] != null ? Map<String, int>.from(data['tokenValues'].map((k, v)=>MapEntry(k, v))) : null,
				data['rewardItemHash'],
				data['rewardVendorHash'],
				data['vendors'] != null ? DestinyFactionVendorDefinition.fromList(data['vendors']) : null,
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
      list.add(DestinyFactionDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['displayProperties'] = this.displayProperties.toMap();
			data['progressionHash'] = this.progressionHash;
			data['tokenValues'] = this.tokenValues;
			data['rewardItemHash'] = this.rewardItemHash;
			data['rewardVendorHash'] = this.rewardVendorHash;
			data['vendors'] = this.vendors.map((item)=>item.toMap()).toList();
			data['hash'] = this.hash;
			data['index'] = this.index;
			data['redacted'] = this.redacted;
		return data;
	}
}