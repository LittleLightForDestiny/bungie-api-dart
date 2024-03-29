import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import '../enums/destiny_socket_array_type.dart';

part 'destiny_insert_plugs_request_entry.g.dart';

/// Represents all of the data related to a single plug to be inserted.
/// Note that, while you *can* point to a socket that represents infusion, you will receive an error if you attempt to do so. Come on guys, let&#39;s play nice.
@JsonSerializable()
class DestinyInsertPlugsRequestEntry{	
	DestinyInsertPlugsRequestEntry();

	
	/// The index into the socket array, which identifies the specific socket being operated on. We also need to know the socketArrayType in order to uniquely identify the socket.
	/// Don't point to or try to insert a plug into an infusion socket. It won't work.
	@JsonKey(name:'socketIndex')
	int? socketIndex;
	
	/// This property, combined with the socketIndex, tells us which socket we are referring to (since operations can be performed on both Intrinsic and "default" sockets, and they occupy different arrays in the Inventory Item Definition). I know, I know. Don't give me that look.
	@JsonKey(name:'socketArrayType',fromJson:decodeDestinySocketArrayType,toJson:encodeDestinySocketArrayType)
	DestinySocketArrayType? socketArrayType;
	
	/// Plugs are never instanced (except in infusion). So with the hash alone, we should be able to: 1) Infer whether the player actually needs to have the item, or if it's a reusable plug 2) Perform any operation needed to use the Plug, including removing the plug item and running reward sheets.
	@JsonKey(name:'plugItemHash')
	int? plugItemHash;

	factory DestinyInsertPlugsRequestEntry.fromJson(Map<String, dynamic> json) {
		return _$DestinyInsertPlugsRequestEntryFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyInsertPlugsRequestEntryToJson(this);

	static Future<DestinyInsertPlugsRequestEntry> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyInsertPlugsRequestEntry>((json)=>DestinyInsertPlugsRequestEntry.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}