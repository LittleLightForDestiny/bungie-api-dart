import 'package:json_annotation/json_annotation.dart';

import 'destiny_perk_reference.dart';

part 'destiny_item_perks_component.g.dart';

/// Instanced items can have perks: benefits that the item bestows.
/// These are related to DestinySandboxPerkDefinition, and sometimes - but not always - have human readable info. When they do, they are the icons and text that you see in an item&#39;s tooltip.
/// Talent Grids, Sockets, and the item itself can apply Perks, which are then summarized here for your convenience.
@JsonSerializable()
class DestinyItemPerksComponent{
	
	DestinyItemPerksComponent();

	factory DestinyItemPerksComponent.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyItemPerksComponentFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	/// The list of perks to display in an item tooltip - and whether or not they have been activated.
	@JsonKey(name:'perks')
	List<DestinyPerkReference> perks;

	
	
	Map<String, dynamic> toJson() => _$DestinyItemPerksComponentToJson(this);
}