import 'destiny_objective_progress.dart';
import 'destiny_item_plug.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_item_socket_state.g.dart';

/// The status of a given item&#39;s socket. (which plug is inserted, if any: whether it is enabled, what &quot;reusable&quot; plugs can be inserted, etc...)
/// If I had it to do over, this would probably have a DestinyItemPlug representing the inserted item instead of most of these properties. :shrug:
@JsonSerializable()
class DestinyItemSocketState {

	/// The currently active plug, if any.
	/// Note that, because all plugs are statically defined, its effect on stats and perks can be statically determined using the plug item&#39;s definition. The stats and perks can be taken at face value on the plug item as the stats and perks it will provide to the user&#x2F;item.
	@JsonKey(name:'plugHash')
	int plugHash;

	/// Even if a plug is inserted, it doesn&#39;t mean it&#39;s enabled.
	/// This flag indicates whether the plug is active and providing its benefits.
	@JsonKey(name:'isEnabled')
	bool isEnabled;

	/// A plug may theoretically provide benefits but not be visible - for instance, some older items use a plug&#39;s damage type perk to modify their own damage type. These, though they are not visible, still affect the item. This field indicates that state.
	/// An invisible plug, while it provides benefits if it is Enabled, cannot be directly modified by the user.
	@JsonKey(name:'isVisible')
	bool isVisible;

	/// If a plug is inserted but not enabled, this will be populated with indexes into the plug item definition&#39;s plug.enabledRules property, so that you can show the reasons why it is not enabled.
	@JsonKey(name:'enableFailIndexes')
	List<int> enableFailIndexes;

	/// If the item supports reusable plugs, this is the list of plug item hashes that are currently allowed to be used for this socket. See the &quot;reusablePlugs&quot; property, which has rendered this obsolete, for more information.
	@JsonKey(name:'reusablePlugHashes')
	List<int> reusablePlugHashes;

	/// Sometimes, Plugs may have objectives: generally, these are used for flavor and display purposes. For instance, a Plug might be tracking the number of PVP kills you have made. It will use the parent item&#39;s data about that tracking status to determine what to show, and will generally show it using the DestinyObjectiveDefinition&#39;s progressDescription property. Refer to the plug&#39;s itemHash and objective property for more information if you would like to display even more data.
	@JsonKey(name:'plugObjectives')
	List<DestinyObjectiveProgress> plugObjectives;

	/// If the item supports reusable plugs, this is the list of plugs that are allowed to be used for the socket, and any relevant information about whether they are &quot;enabled&quot;, whether they are allowed to be inserted, and any other information such as objectives.
	/// A Reusable Plug is a plug that you can always insert into this socket as long as its insertion rules are passed, regardless of whether or not you have the plug in your inventory. An example of it failing an insertion rule would be if it has an Objective that needs to be completed before it can be inserted, and that objective hasn&#39;t been completed yet.
	/// In practice, a socket will *either* have reusable plugs *or* it will allow for plugs in your inventory to be inserted. See DestinyInventoryItemDefinition.socket for more info.
	@JsonKey(name:'reusablePlugs')
	List<DestinyItemPlug> reusablePlugs;
	DestinyItemSocketState();

	factory DestinyItemSocketState.fromJson(Map<String, dynamic> json) => _$DestinyItemSocketStateFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyItemSocketStateToJson(this);
}
