
/* The list of perks to display in an item tooltip - and whether or not they have been activated.
Perks apply a variety of effects to a character, and are generally either intrinsic to the item or provided in activated talent nodes or sockets. */
class DestinyPerkReference{
	
	/* The hash identifier for the perk, which can be used to look up DestinySandboxPerkDefinition if it exists. Be warned, perks frequently do not have user-viewable information. You should examine whether you actually found a name/description in the perk's definition before you show it to the user. */
	int perkHash;
	
	/* The icon for the perk. */
	String iconPath;
	
	/* Whether this perk is currently active. (We may return perks that you have not actually activated yet: these represent perks that you should show in the item's tooltip, but that the user has not yet activated.) */
	bool isActive;
	
	/* Some perks provide benefits, but aren't visible in the UI. This value will let you know if this is perk should be shown in your UI. */
	bool visible;
	DestinyPerkReference(
		this.perkHash,
		this.iconPath,
		this.isActive,
		this.visible,
	);

	static DestinyPerkReference fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyPerkReference(
				data['perkHash'],
				data['iconPath'],
				data['isActive'],
				data['visible'],
		);
	}

	static List<DestinyPerkReference> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyPerkReference> list = new List();
    data.forEach((item) {
      list.add(DestinyPerkReference.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['perkHash'] = this.perkHash;
			data['iconPath'] = this.iconPath;
			data['isActive'] = this.isActive;
			data['visible'] = this.visible;
		return data;
	}
}