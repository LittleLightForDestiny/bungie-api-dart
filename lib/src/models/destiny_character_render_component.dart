import 'package:json_annotation/json_annotation.dart';

import 'dye_reference.dart';
import 'destiny_character_customization.dart';
import 'destiny_character_peer_view.dart';

part 'destiny_character_render_component.g.dart';

/// Only really useful if you&#39;re attempting to render the character&#39;s current appearance in 3D, this returns a bare minimum of information, pre-aggregated, that you&#39;ll need to perform that rendering. Note that you need to combine this with other 3D assets and data from our servers.
/// Examine the Javascript returned by https:&#x2F;&#x2F;bungie.net&#x2F;sharedbundle&#x2F;spasm to see how we use this data, but be warned: the rabbit hole goes pretty deep.
@JsonSerializable()
class DestinyCharacterRenderComponent{
	
	DestinyCharacterRenderComponent();

	factory DestinyCharacterRenderComponent.fromJson(Map<String, dynamic> json) {
		return _$DestinyCharacterRenderComponentFromJson(json);
	}

	/// Custom dyes, calculated by iterating over the character's equipped items. Useful for pre-fetching all of the dye data needed from our server.
	@JsonKey(name:'customDyes')
	List<DyeReference>? customDyes;
	/// This is actually something that Spasm.js *doesn't* do right now, and that we don't return assets for yet. This is the data about what character customization options you picked. You can combine this with DestinyCharacterCustomizationOptionDefinition to show some cool info, and hopefully someday to actually render a user's face in 3D. We'll see if we ever end up with time for that.
	@JsonKey(name:'customization')
	DestinyCharacterCustomization? customization;
	/// A minimal view of:
	/// - Equipped items
	/// - The rendering-related custom options on those equipped items
	/// Combined, that should be enough to render all of the items on the equipped character.
	@JsonKey(name:'peerView')
	DestinyCharacterPeerView? peerView;

	
	
	Map<String, dynamic> toJson() => _$DestinyCharacterRenderComponentToJson(this);
}