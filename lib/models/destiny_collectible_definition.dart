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
		DestinyDisplayPropertiesDefinition this.displayProperties,
		int this.scope,
		String this.sourceString,
		int this.sourceHash,
		int this.itemHash,
		DestinyCollectibleAcquisitionBlock this.acquisitionInfo,
		DestinyCollectibleStateBlock this.stateInfo,
		DestinyPresentationChildBlock this.presentationInfo,
		int this.hash,
		int this.index,
		bool this.redacted,
	);

	static DestinyCollectibleDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyCollectibleDefinition(
				DestinyDisplayPropertiesDefinition.fromMap(data['displayProperties']),
				data['scope'],
				data['sourceString'],
				data['sourceHash'],
				data['itemHash'],
				DestinyCollectibleAcquisitionBlock.fromMap(data['acquisitionInfo']),
				DestinyCollectibleStateBlock.fromMap(data['stateInfo']),
				DestinyPresentationChildBlock.fromMap(data['presentationInfo']),
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