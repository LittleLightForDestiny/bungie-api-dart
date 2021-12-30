import 'package:json_annotation/json_annotation.dart';


part 'destiny_item_socket_state.g.dart';

/// The status of a given item&#39;s socket. (which plug is inserted, if any: whether it is enabled, what &quot;reusable&quot; plugs can be inserted, etc...)
/// If I had it to do over, this would probably have a DestinyItemPlug representing the inserted item instead of most of these properties. :shrug:
@JsonSerializable()
class DestinyItemSocketState{	
	DestinyItemSocketState();

	factory DestinyItemSocketState.fromJson(Map<String, dynamic> json) {
		return _$DestinyItemSocketStateFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyItemSocketStateToJson(this);
	
	/// The currently active plug, if any.
	/// Note that, because all plugs are statically defined, its effect on stats and perks can be statically determined using the plug item's definition. The stats and perks can be taken at face value on the plug item as the stats and perks it will provide to the user/item.
	@JsonKey(name:'plugHash')
	int? plugHash;
	
	/// Even if a plug is inserted, it doesn't mean it's enabled.
	/// This flag indicates whether the plug is active and providing its benefits.
	@JsonKey(name:'isEnabled')
	bool? isEnabled;
	
	/// A plug may theoretically provide benefits but not be visible - for instance, some older items use a plug's damage type perk to modify their own damage type. These, though they are not visible, still affect the item. This field indicates that state.
	/// An invisible plug, while it provides benefits if it is Enabled, cannot be directly modified by the user.
	@JsonKey(name:'isVisible')
	bool? isVisible;
	
	/// If a plug is inserted but not enabled, this will be populated with indexes into the plug item definition's plug.enabledRules property, so that you can show the reasons why it is not enabled.
	@JsonKey(name:'enableFailIndexes')
	List<int>? enableFailIndexes;
}