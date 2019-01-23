import 'interpolation_point_float.dart';

/** These are pre-constructed collections of data that can be used to determine the Level Requirement for an item given a Progression to be tested (such as the Character's level).
For instance, say a character receives a new Auto Rifle, and that Auto Rifle's DestinyInventoryItemDefinition.quality.progressionLevelRequirementHash property is pointing at one of these DestinyProgressionLevelRequirementDefinitions. Let's pretend also that the progressionHash it is pointing at is the Character Level progression. In that situation, the character's level will be used to interpolate a value in the requirementCurve property. The value picked up from that interpolation will be the required level for the item. */
class DestinyProgressionLevelRequirementDefinition{
	
	/** A curve of level requirements, weighted by the related progressions' level.
Interpolate against this curve with the character's progression level to determine what the level requirement of the generated item that is using this data will be. */
	List<InterpolationPointFloat> requirementCurve;
	
	/** The progression whose level should be used to determine the level requirement.
Look up the DestinyProgressionDefinition with this hash for more information about the progression in question. */
	int progressionHash;
	
	/** The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
When entities refer to each other in Destiny content, it is this hash that they are referring to. */
	int hash;
	
	/** The index of the entity as it was found in the investment tables. */
	int index;
	
	/** If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! */
	bool redacted;
	DestinyProgressionLevelRequirementDefinition(
		this.requirementCurve,
		this.progressionHash,
		this.hash,
		this.index,
		this.redacted,
	);

	static DestinyProgressionLevelRequirementDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyProgressionLevelRequirementDefinition(
				data['requirementCurve'] != null ? InterpolationPointFloat.fromList(data['requirementCurve']) : null,
				data['progressionHash'],
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyProgressionLevelRequirementDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyProgressionLevelRequirementDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyProgressionLevelRequirementDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['requirementCurve'] = this.requirementCurve != null? this.requirementCurve.map((item)=>item.toMap()).toList() : null;
			data['progressionHash'] = this.progressionHash;
			data['hash'] = this.hash;
			data['index'] = this.index;
			data['redacted'] = this.redacted;
		return data;
	}
}