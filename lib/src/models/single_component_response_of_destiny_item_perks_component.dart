import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_item_perks_component.dart';
import '../enums/component_privacy_setting.dart';

part 'single_component_response_of_destiny_item_perks_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyItemPerksComponent{	
	SingleComponentResponseOfDestinyItemPerksComponent();

	
	/// Instanced items can have perks: benefits that the item bestows.
	/// These are related to DestinySandboxPerkDefinition, and sometimes - but not always - have human readable info. When they do, they are the icons and text that you see in an item's tooltip.
	/// Talent Grids, Sockets, and the item itself can apply Perks, which are then summarized here for your convenience.
	@JsonKey(name:'data')
	DestinyItemPerksComponent? data;
	
	@JsonKey(name:'privacy',fromJson:decodeComponentPrivacySetting,toJson:encodeComponentPrivacySetting)
	ComponentPrivacySetting? privacy;
	
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool? disabled;

	factory SingleComponentResponseOfDestinyItemPerksComponent.fromJson(Map<String, dynamic> json) {
		return _$SingleComponentResponseOfDestinyItemPerksComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyItemPerksComponentToJson(this);

	static Future<SingleComponentResponseOfDestinyItemPerksComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, SingleComponentResponseOfDestinyItemPerksComponent>((json)=>SingleComponentResponseOfDestinyItemPerksComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}