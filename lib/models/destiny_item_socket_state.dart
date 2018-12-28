import 'destiny_objective_progress.dart';
import 'destiny_item_plug.dart';

/** The status of a given item's socket. (which plug is inserted, if any: whether it is enabled, what "reusable" plugs can be inserted, etc...)
If I had it to do over, this would probably have a DestinyItemPlug representing the inserted item instead of most of these properties. :shrug: */
class DestinyItemSocketState{
	
	/** The currently active plug, if any.
Note that, because all plugs are statically defined, its effect on stats and perks can be statically determined using the plug item's definition. The stats and perks can be taken at face value on the plug item as the stats and perks it will provide to the user/item. */
	int plugHash;
	
	/** Even if a plug is inserted, it doesn't mean it's enabled.
This flag indicates whether the plug is active and providing its benefits. */
	bool isEnabled;
	
	/** A plug may theoretically provide benefits but not be visible - for instance, some older items use a plug's damage type perk to modify their own damage type. These, though they are not visible, still affect the item. This field indicates that state.
An invisible plug, while it provides benefits if it is Enabled, cannot be directly modified by the user. */
	bool isVisible;
	
	/** If a plug is inserted but not enabled, this will be populated with indexes into the plug item definition's plug.enabledRules property, so that you can show the reasons why it is not enabled. */
	List<int> enableFailIndexes;
	
	/** If the item supports reusable plugs, this is the list of plug item hashes that are currently allowed to be used for this socket. See the "reusablePlugs" property, which has rendered this obsolete, for more information. */
	List<int> reusablePlugHashes;
	
	/** Sometimes, Plugs may have objectives: generally, these are used for flavor and display purposes. For instance, a Plug might be tracking the number of PVP kills you have made. It will use the parent item's data about that tracking status to determine what to show, and will generally show it using the DestinyObjectiveDefinition's progressDescription property. Refer to the plug's itemHash and objective property for more information if you would like to display even more data. */
	List<DestinyObjectiveProgress> plugObjectives;
	
	/** If the item supports reusable plugs, this is the list of plugs that are allowed to be used for the socket, and any relevant information about whether they are "enabled", whether they are allowed to be inserted, and any other information such as objectives.
A Reusable Plug is a plug that you can always insert into this socket as long as its insertion rules are passed, regardless of whether or not you have the plug in your inventory. An example of it failing an insertion rule would be if it has an Objective that needs to be completed before it can be inserted, and that objective hasn't been completed yet.
In practice, a socket will *either* have reusable plugs *or* it will allow for plugs in your inventory to be inserted. See DestinyInventoryItemDefinition.socket for more info. */
	List<DestinyItemPlug> reusablePlugs;
	DestinyItemSocketState(
		this.plugHash,
		this.isEnabled,
		this.isVisible,
		this.enableFailIndexes,
		this.reusablePlugHashes,
		this.plugObjectives,
		this.reusablePlugs,
	);

	static DestinyItemSocketState fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemSocketState(
				data['plugHash'],
				data['isEnabled'],
				data['isVisible'],
				data['enableFailIndexes'] != null ? data['enableFailIndexes']?.cast<int>() ?? null : null,
				data['reusablePlugHashes'] != null ? data['reusablePlugHashes']?.cast<int>() ?? null : null,
				data['plugObjectives'] != null ? DestinyObjectiveProgress.fromList(data['plugObjectives']) : null,
				data['reusablePlugs'] != null ? DestinyItemPlug.fromList(data['reusablePlugs']) : null,
		);
	}

	static List<DestinyItemSocketState> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemSocketState> list = new List();
    data.forEach((item) {
      list.add(DestinyItemSocketState.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['plugHash'] = this.plugHash;
			data['isEnabled'] = this.isEnabled;
			data['isVisible'] = this.isVisible;
			data['enableFailIndexes'] = this.enableFailIndexes;
			data['reusablePlugHashes'] = this.reusablePlugHashes;
			data['plugObjectives'] = this.plugObjectives.map((item)=>item.toMap()).toList();
			data['reusablePlugs'] = this.reusablePlugs.map((item)=>item.toMap()).toList();
		return data;
	}
}