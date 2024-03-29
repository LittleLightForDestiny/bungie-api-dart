import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import '../enums/item_bind_status.dart';
import '../enums/item_location.dart';
import '../enums/transfer_statuses.dart';
import '../enums/item_state.dart';
import 'destiny_objective_progress.dart';

part 'destiny_item_component.g.dart';

/// The base item component, filled with properties that are generally useful to know in any item request or that don&#39;t feel worthwhile to put in their own component.
@JsonSerializable()
class DestinyItemComponent{	
	DestinyItemComponent();

	
	/// The identifier for the item's definition, which is where most of the useful static information for the item can be found.
	@JsonKey(name:'itemHash')
	int? itemHash;
	
	/// If the item is instanced, it will have an instance ID. Lack of an instance ID implies that the item has no distinct local qualities aside from stack size.
	@JsonKey(name:'itemInstanceId')
	String? itemInstanceId;
	
	/// The quantity of the item in this stack. Note that Instanced items cannot stack. If an instanced item, this value will always be 1 (as the stack has exactly one item in it)
	@JsonKey(name:'quantity')
	int? quantity;
	
	/// If the item is bound to a location, it will be specified in this enum.
	@JsonKey(name:'bindStatus',fromJson:decodeItemBindStatus,toJson:encodeItemBindStatus)
	ItemBindStatus? bindStatus;
	
	/// An easy reference for where the item is located. Redundant if you got the item from an Inventory, but useful when making detail calls on specific items.
	@JsonKey(name:'location',fromJson:decodeItemLocation,toJson:encodeItemLocation)
	ItemLocation? location;
	
	/// The hash identifier for the specific inventory bucket in which the item is located.
	@JsonKey(name:'bucketHash')
	int? bucketHash;
	
	/// If there is a known error state that would cause this item to not be transferable, this Flags enum will indicate all of those error states. Otherwise, it will be 0 (CanTransfer).
	@JsonKey(name:'transferStatus')
	TransferStatuses? transferStatus;
	
	/// If the item can be locked, this will indicate that state.
	@JsonKey(name:'lockable')
	bool? lockable;
	
	/// A flags enumeration indicating the transient/custom states of the item that affect how it is rendered: whether it's tracked or locked for example, or whether it has a masterwork plug inserted.
	@JsonKey(name:'state')
	ItemState? state;
	
	/// If populated, this is the hash of the item whose icon (and other secondary styles, but *not* the human readable strings) should override whatever icons/styles are on the item being sold.
	/// If you don't do this, certain items whose styles are being overridden by socketed items - such as the "Recycle Shader" item - would show whatever their default icon/style is, and it wouldn't be pretty or look accurate.
	@JsonKey(name:'overrideStyleItemHash')
	int? overrideStyleItemHash;
	
	/// If the item can expire, this is the date at which it will/did expire.
	@JsonKey(name:'expirationDate')
	String? expirationDate;
	
	/// If this is true, the object is actually a "wrapper" of the object it's representing. This means that it's not the actual item itself, but rather an item that must be "opened" in game before you have and can use the item.
	///  Wrappers are an evolution of "bundles", which give an easy way to let you preview the contents of what you purchased while still letting you get a refund before you "open" it.
	@JsonKey(name:'isWrapper')
	bool? isWrapper;
	
	/// If this is populated, it is a list of indexes into DestinyInventoryItemDefinition.tooltipNotifications for any special tooltip messages that need to be shown for this item.
	@JsonKey(name:'tooltipNotificationIndexes')
	List<int>? tooltipNotificationIndexes;
	
	/// The identifier for the currently-selected metric definition, to be displayed on the emblem nameplate.
	@JsonKey(name:'metricHash')
	int? metricHash;
	
	/// The objective progress for the currently-selected metric definition, to be displayed on the emblem nameplate.
	@JsonKey(name:'metricObjective')
	DestinyObjectiveProgress? metricObjective;
	
	/// The version of this item, used to index into the versions list in the item definition quality block.
	@JsonKey(name:'versionNumber')
	int? versionNumber;
	
	/// If available, a list that describes which item values (rewards) should be shown (true) or hidden (false).
	@JsonKey(name:'itemValueVisibility')
	List<bool>? itemValueVisibility;

	factory DestinyItemComponent.fromJson(Map<String, dynamic> json) {
		return _$DestinyItemComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyItemComponentToJson(this);

	static Future<DestinyItemComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyItemComponent>((json)=>DestinyItemComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}