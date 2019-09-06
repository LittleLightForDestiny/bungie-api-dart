
import 'package:json_annotation/json_annotation.dart';
part 'destiny_item_component.g.dart';

/// The base item component, filled with properties that are generally useful to know in any item request or that don&#39;t feel worthwhile to put in their own component.
@JsonSerializable()
class DestinyItemComponent {

	/// The identifier for the item&#39;s definition, which is where most of the useful static information for the item can be found.
	@JsonKey(name:'itemHash')
	int itemHash;

	/// If the item is instanced, it will have an instance ID. Lack of an instance ID implies that the item has no distinct local qualities aside from stack size.
	@JsonKey(name:'itemInstanceId')
	String itemInstanceId;

	/// The quantity of the item in this stack. Note that Instanced items cannot stack. If an instanced item, this value will always be 1 (as the stack has exactly one item in it)
	@JsonKey(name:'quantity')
	int quantity;

	/// If the item is bound to a location, it will be specified in this enum.
	@JsonKey(name:'bindStatus')
	int bindStatus;

	/// An easy reference for where the item is located. Redundant if you got the item from an Inventory, but useful when making detail calls on specific items.
	@JsonKey(name:'location')
	int location;

	/// The hash identifier for the specific inventory bucket in which the item is located.
	@JsonKey(name:'bucketHash')
	int bucketHash;

	/// If there is a known error state that would cause this item to not be transferable, this Flags enum will indicate all of those error states. Otherwise, it will be 0 (CanTransfer).
	@JsonKey(name:'transferStatus')
	int transferStatus;

	/// If the item can be locked, this will indicate that state.
	@JsonKey(name:'lockable')
	bool lockable;

	/// A flags enumeration indicating the transient&#x2F;custom states of the item that affect how it is rendered: whether it&#39;s tracked or locked for example, or whether it has a masterwork plug inserted.
	@JsonKey(name:'state')
	int state;

	/// If populated, this is the hash of the item whose icon (and other secondary styles, but *not* the human readable strings) should override whatever icons&#x2F;styles are on the item being sold.
	/// If you don&#39;t do this, certain items whose styles are being overridden by socketed items - such as the &quot;Recycle Shader&quot; item - would show whatever their default icon&#x2F;style is, and it wouldn&#39;t be pretty or look accurate.
	@JsonKey(name:'overrideStyleItemHash')
	int overrideStyleItemHash;

	/// If the item can expire, this is the date at which it will&#x2F;did expire.
	@JsonKey(name:'expirationDate')
	String expirationDate;
	DestinyItemComponent();

	factory DestinyItemComponent.fromJson(Map<String, dynamic> json) => _$DestinyItemComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyItemComponentToJson(this);
}
