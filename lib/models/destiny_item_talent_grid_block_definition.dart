
/** This defines information that can only come from a talent grid on an item. Items mostly have negligible talent grid data these days, but instanced items still retain grids as a source for some of this common information.
Builds/Subclasses are the only items left that still have talent grids with meaningful Nodes. */
class DestinyItemTalentGridBlockDefinition{
	
	/** The hash identifier of the DestinyTalentGridDefinition attached to this item. */
	int talentGridHash;
	
	/** This is meant to be a subtitle for looking at the talent grid. In practice, somewhat frustratingly, this always merely says the localized word for "Details". Great. Maybe it'll have more if talent grids ever get used for more than builds and subclasses again. */
	String itemDetailString;
	
	/** A shortcut string identifier for the "build" in question, if this talent grid has an associated build. Doesn't map to anything we can expose at the moment. */
	String buildName;
	
	/** If the talent grid implies a damage type, this is the enum value for that damage type. */
	int hudDamageType;
	
	/** If the talent grid has a special icon that's shown in the game UI (like builds, funny that), this is the identifier for that icon. Sadly, we don't actually get that icon right now. I'll be looking to replace this with a path to the actual icon itself. */
	String hudIcon;
	DestinyItemTalentGridBlockDefinition(
		this.talentGridHash,
		this.itemDetailString,
		this.buildName,
		this.hudDamageType,
		this.hudIcon,
	);

	static DestinyItemTalentGridBlockDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemTalentGridBlockDefinition(
				data['talentGridHash'],
				data['itemDetailString'],
				data['buildName'],
				data['hudDamageType'],
				data['hudIcon'],
		);
	}

	static List<DestinyItemTalentGridBlockDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemTalentGridBlockDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyItemTalentGridBlockDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['talentGridHash'] = this.talentGridHash;
			data['itemDetailString'] = this.itemDetailString;
			data['buildName'] = this.buildName;
			data['hudDamageType'] = this.hudDamageType;
			data['hudIcon'] = this.hudIcon;
		return data;
	}
}