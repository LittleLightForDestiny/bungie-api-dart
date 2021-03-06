import 'package:json_annotation/json_annotation.dart';


part 'destiny_node_socket_replace_response.g.dart';

/// This is a bit of an odd duck. Apparently, if talent nodes steps have this data, the game will go through on step activation and alter the first Socket it finds on the item that has a type matching the given socket type, inserting the indicated plug item.
@JsonSerializable()
class DestinyNodeSocketReplaceResponse{
	
	DestinyNodeSocketReplaceResponse();

	factory DestinyNodeSocketReplaceResponse.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyNodeSocketReplaceResponseFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	/// The hash identifier of the socket type to find amidst the item's sockets (the item to which this talent grid is attached). See DestinyInventoryItemDefinition.sockets.socketEntries to find the socket type of sockets on the item in question.
	@JsonKey(name:'socketTypeHash')
	int socketTypeHash;
	/// The hash identifier of the plug item that will be inserted into the socket found.
	@JsonKey(name:'plugItemHash')
	int plugItemHash;

	
	
	Map<String, dynamic> toJson() => _$DestinyNodeSocketReplaceResponseToJson(this);
}