import 'destiny_display_properties_definition.dart';
import 'destiny_collectible_acquisition_block.dart';
import 'destiny_collectible_state_block.dart';
import 'destiny_presentation_child_block.dart';
class DestinyCollectibleDefinition{
	DestinyDisplayPropertiesDefinition displayProperties;
	int scope;
	String sourceString;
	int sourceHash;
	int itemHash;
	DestinyCollectibleAcquisitionBlock acquisitionInfo;
	DestinyCollectibleStateBlock stateInfo;
	DestinyPresentationChildBlock presentationInfo;
	int hash;
	int index;
	bool redacted;
	DestinyCollectibleDefinition(
		this.displayProperties,
		this.scope,
		this.sourceString,
		this.sourceHash,
		this.itemHash,
		this.acquisitionInfo,
		this.stateInfo,
		this.presentationInfo,
		this.hash,
		this.index,
		this.redacted,
	);

	static DestinyCollectibleDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyCollectibleDefinition(
				data['displayProperties'] != null ? DestinyDisplayPropertiesDefinition.fromMap(data['displayProperties']) : null,
				data['scope'],
				data['sourceString'],
				data['sourceHash'],
				data['itemHash'],
				data['acquisitionInfo'] != null ? DestinyCollectibleAcquisitionBlock.fromMap(data['acquisitionInfo']) : null,
				data['stateInfo'] != null ? DestinyCollectibleStateBlock.fromMap(data['stateInfo']) : null,
				data['presentationInfo'] != null ? DestinyPresentationChildBlock.fromMap(data['presentationInfo']) : null,
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyCollectibleDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyCollectibleDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyCollectibleDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['displayProperties'] = this.displayProperties.toMap();
			data['scope'] = this.scope;
			data['sourceString'] = this.sourceString;
			data['sourceHash'] = this.sourceHash;
			data['itemHash'] = this.itemHash;
			data['acquisitionInfo'] = this.acquisitionInfo.toMap();
			data['stateInfo'] = this.stateInfo.toMap();
			data['presentationInfo'] = this.presentationInfo.toMap();
			data['hash'] = this.hash;
			data['index'] = this.index;
			data['redacted'] = this.redacted;
		return data;
	}
}