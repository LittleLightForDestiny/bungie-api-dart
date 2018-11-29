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

	static DestinyCollectibleDefinition fromJson(Map<String, dynamic> data){
		return new DestinyCollectibleDefinition(
				DestinyDisplayPropertiesDefinition.fromJson(data['displayProperties']),
				data['scope'],
				data['sourceString'],
				data['sourceHash'],
				data['itemHash'],
				DestinyCollectibleAcquisitionBlock.fromJson(data['acquisitionInfo']),
				DestinyCollectibleStateBlock.fromJson(data['stateInfo']),
				DestinyPresentationChildBlock.fromJson(data['presentationInfo']),
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyCollectibleDefinition> fromList(List<dynamic> data){
		List<DestinyCollectibleDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyCollectibleDefinition.fromJson(item));
    });
    return list;
	}
}