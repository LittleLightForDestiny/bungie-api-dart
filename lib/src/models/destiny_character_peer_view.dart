import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_item_peer_view.dart';

part 'destiny_character_peer_view.g.dart';

/// A minimal view of a character&#39;s equipped items, for the purpose of rendering a summary screen or showing the character in 3D.
@JsonSerializable()
class DestinyCharacterPeerView{	
	DestinyCharacterPeerView();

	
	@JsonKey(name:'equipment')
	List<DestinyItemPeerView>? equipment;

	factory DestinyCharacterPeerView.fromJson(Map<String, dynamic> json) {
		return _$DestinyCharacterPeerViewFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyCharacterPeerViewToJson(this);

	static Future<DestinyCharacterPeerView> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyCharacterPeerView>((json)=>DestinyCharacterPeerView.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}