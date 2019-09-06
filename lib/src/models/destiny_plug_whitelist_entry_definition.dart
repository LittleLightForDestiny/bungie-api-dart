
import 'package:json_annotation/json_annotation.dart';
part 'destiny_plug_whitelist_entry_definition.g.dart';

/// Defines a plug &quot;Category&quot; that is allowed to be plugged into a socket of this type.
/// This should be compared against a given plug item&#39;s DestinyInventoryItemDefinition.plug.plugCategoryHash, which indicates the plug item&#39;s category.
@JsonSerializable()
class DestinyPlugWhitelistEntryDefinition {

	/// The hash identifier of the Plug Category to compare against the plug item&#39;s plug.plugCategoryHash.
	/// Note that this does NOT relate to any Definition in itself, it is only used for comparison purposes.
	@JsonKey(name:'categoryHash')
	int categoryHash;

	/// The string identifier for the category, which is here mostly for debug purposes.
	@JsonKey(name:'categoryIdentifier')
	String categoryIdentifier;

	/// The list of all plug items (DestinyInventoryItemDefinition) that the socket may randomly be populated with when reinitialized.
	/// Which ones you should actually show are determined by the plug being inserted into the socket, and the socket’s type.
	/// When you inspect the plug that could go into a Masterwork Socket, look up the socket type of the socket being inspected and find the DestinySocketTypeDefinition.
	/// Then, look at the Plugs that can fit in that socket. Find the Whitelist in the DestinySocketTypeDefinition that matches the plug item’s categoryhash.
	/// That whitelist entry will potentially have a new “reinitializationPossiblePlugHashes” property.If it does, that means we know what it will roll if you try to insert this plug into this socket.
	@JsonKey(name:'reinitializationPossiblePlugHashes')
	List<int> reinitializationPossiblePlugHashes;
	DestinyPlugWhitelistEntryDefinition();

	factory DestinyPlugWhitelistEntryDefinition.fromJson(Map<String, dynamic> json) => _$DestinyPlugWhitelistEntryDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyPlugWhitelistEntryDefinitionToJson(this);
}
