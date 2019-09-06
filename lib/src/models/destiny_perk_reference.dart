
import 'package:json_annotation/json_annotation.dart';
part 'destiny_perk_reference.g.dart';

/// The list of perks to display in an item tooltip - and whether or not they have been activated.
/// Perks apply a variety of effects to a character, and are generally either intrinsic to the item or provided in activated talent nodes or sockets.
@JsonSerializable()
class DestinyPerkReference {

	/// The hash identifier for the perk, which can be used to look up DestinySandboxPerkDefinition if it exists. Be warned, perks frequently do not have user-viewable information. You should examine whether you actually found a name&#x2F;description in the perk&#39;s definition before you show it to the user.
	@JsonKey(name:'perkHash')
	int perkHash;

	/// The icon for the perk.
	@JsonKey(name:'iconPath')
	String iconPath;

	/// Whether this perk is currently active. (We may return perks that you have not actually activated yet: these represent perks that you should show in the item&#39;s tooltip, but that the user has not yet activated.)
	@JsonKey(name:'isActive')
	bool isActive;

	/// Some perks provide benefits, but aren&#39;t visible in the UI. This value will let you know if this is perk should be shown in your UI.
	@JsonKey(name:'visible')
	bool visible;
	DestinyPerkReference();

	factory DestinyPerkReference.fromJson(Map<String, dynamic> json) => _$DestinyPerkReferenceFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyPerkReferenceToJson(this);
}
