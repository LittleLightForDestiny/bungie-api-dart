import 'dye_reference.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_item_peer_view.g.dart';

/// Bare minimum summary information for an item, for the sake of 3D rendering the item.
@JsonSerializable()
class DestinyItemPeerView {

	/// The hash identifier of the item in question. Use it to look up the DestinyInventoryItemDefinition of the item for static rendering data.
	@JsonKey(name:'itemHash')
	int itemHash;

	/// The list of dyes that have been applied to this item.
	@JsonKey(name:'dyes')
	List<DyeReference> dyes;
	DestinyItemPeerView();

	factory DestinyItemPeerView.fromJson(Map<String, dynamic> json) => _$DestinyItemPeerViewFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyItemPeerViewToJson(this);
}
