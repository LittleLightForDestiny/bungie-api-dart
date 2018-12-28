import 'dye_reference.dart';
import 'destiny_character_customization.dart';
import 'destiny_character_peer_view.dart';

/* Only really useful if you're attempting to render the character's current appearance in 3D, this returns a bare minimum of information, pre-aggregated, that you'll need to perform that rendering. Note that you need to combine this with other 3D assets and data from our servers.
Examine the Javascript returned by https://bungie.net/sharedbundle/spasm to see how we use this data, but be warned: the rabbit hole goes pretty deep. */
class DestinyCharacterRenderComponent{
	
	/* Custom dyes, calculated by iterating over the character's equipped items. Useful for pre-fetching all of the dye data needed from our server. */
	List<DyeReference> customDyes;
	
	/* This is actually something that Spasm.js *doesn't* do right now, and that we don't return assets for yet. This is the data about what character customization options you picked. You can combine this with DestinyCharacterCustomizationOptionDefinition to show some cool info, and hopefully someday to actually render a user's face in 3D. We'll see if we ever end up with time for that. */
	DestinyCharacterCustomization customization;
	
	/* A minimal view of:
- Equipped items
- The rendering-related custom options on those equipped items
Combined, that should be enough to render all of the items on the equipped character. */
	DestinyCharacterPeerView peerView;
	DestinyCharacterRenderComponent(
		this.customDyes,
		this.customization,
		this.peerView,
	);

	static DestinyCharacterRenderComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyCharacterRenderComponent(
				data['customDyes'] != null ? DyeReference.fromList(data['customDyes']) : null,
				data['customization'] != null ? DestinyCharacterCustomization.fromMap(data['customization']) : null,
				data['peerView'] != null ? DestinyCharacterPeerView.fromMap(data['peerView']) : null,
		);
	}

	static List<DestinyCharacterRenderComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyCharacterRenderComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyCharacterRenderComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['customDyes'] = this.customDyes.map((item)=>item.toMap()).toList();
			data['customization'] = this.customization;
			data['peerView'] = this.peerView;
		return data;
	}
}