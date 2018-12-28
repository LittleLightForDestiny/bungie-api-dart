import 'destiny_display_properties_definition.dart';
import 'destiny_collectible_acquisition_block.dart';
import 'destiny_collectible_state_block.dart';
import 'destiny_presentation_child_block.dart';

/** Defines a */
class DestinyCollectibleDefinition{
	
	/** Many Destiny*Definition contracts - the "first order" entities of Destiny that have their own tables in the Manifest Database - also have displayable information. This is the base class for that display information. */
	DestinyDisplayPropertiesDefinition displayProperties;
	
	/** Indicates whether this Collectible's state is determined on a per-character or on an account-wide basis. */
	int scope;
	
	/** A human readable string for a hint about how to acquire the item. */
	String sourceString;
	
	/** This is a hash identifier we are building on the BNet side in an attempt to let people group collectibles by similar sources.
I can't promise that it's going to be 100% accurate, but if the designers were consistent in assigning the same source strings to items with the same sources, it *ought to* be. No promises though.
This hash also doesn't relate to an actual definition, just to note: we've got nothing useful other than the source string for this data. */
	int sourceHash;
	
	/**  */
	int itemHash;
	
	/**  */
	DestinyCollectibleAcquisitionBlock acquisitionInfo;
	
	/**  */
	DestinyCollectibleStateBlock stateInfo;
	
	/**  */
	DestinyPresentationChildBlock presentationInfo;
	
	/** The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
When entities refer to each other in Destiny content, it is this hash that they are referring to. */
	int hash;
	
	/** The index of the entity as it was found in the investment tables. */
	int index;
	
	/** If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! */
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