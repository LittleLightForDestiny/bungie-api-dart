import 'destiny_objective_progress.dart';

/**  */
class DestinyItemPlug{
	
	/** The hash identifier of the DestinyInventoryItemDefinition that represents this plug. */
	int plugItemHash;
	
	/** Sometimes, Plugs may have objectives: these are often used for flavor and display purposes, but they can be used for any arbitrary purpose (both fortunately and unfortunately). Recently (with Season 2) they were expanded in use to be used as the "gating" for whether the plug can be inserted at all. For instance, a Plug might be tracking the number of PVP kills you have made. It will use the parent item's data about that tracking status to determine what to show, and will generally show it using the DestinyObjectiveDefinition's progressDescription property. Refer to the plug's itemHash and objective property for more information if you would like to display even more data. */
	List<DestinyObjectiveProgress> plugObjectives;
	
	/** If true, this plug has met all of its insertion requirements. Big if true. */
	bool canInsert;
	
	/** If true, this plug will provide its benefits while inserted. */
	bool enabled;
	
	/** If the plug cannot be inserted for some reason, this will have the indexes into the plug item definition's plug.insertionRules property, so you can show the reasons why it can't be inserted.
This list will be empty if the plug can be inserted. */
	List<int> insertFailIndexes;
	
	/** If a plug is not enabled, this will be populated with indexes into the plug item definition's plug.enabledRules property, so that you can show the reasons why it is not enabled.
This list will be empty if the plug is enabled. */
	List<int> enableFailIndexes;
	DestinyItemPlug(
		this.plugItemHash,
		this.plugObjectives,
		this.canInsert,
		this.enabled,
		this.insertFailIndexes,
		this.enableFailIndexes,
	);

	static DestinyItemPlug fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemPlug(
				data['plugItemHash'],
				data['plugObjectives'] != null ? DestinyObjectiveProgress.fromList(data['plugObjectives']) : null,
				data['canInsert'],
				data['enabled'],
				data['insertFailIndexes'] != null ? data['insertFailIndexes']?.cast<int>() ?? null : null,
				data['enableFailIndexes'] != null ? data['enableFailIndexes']?.cast<int>() ?? null : null,
		);
	}

	static List<DestinyItemPlug> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemPlug> list = new List();
    data.forEach((item) {
      list.add(DestinyItemPlug.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['plugItemHash'] = this.plugItemHash;
			data['plugObjectives'] = this.plugObjectives.map((item)=>item.toMap()).toList();
			data['canInsert'] = this.canInsert;
			data['enabled'] = this.enabled;
			data['insertFailIndexes'] = this.insertFailIndexes;
			data['enableFailIndexes'] = this.enableFailIndexes;
		return data;
	}
}