import 'destiny_item_peer_view.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_character_peer_view.g.dart';

/// A minimal view of a character&#39;s equipped items, for the purpose of rendering a summary screen or showing the character in 3D.
@JsonSerializable()
class DestinyCharacterPeerView {

	@JsonKey(name:'equipment')
	List<DestinyItemPeerView> equipment;
	DestinyCharacterPeerView();

	factory DestinyCharacterPeerView.fromJson(Map<String, dynamic> json) => _$DestinyCharacterPeerViewFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyCharacterPeerViewToJson(this);
}
