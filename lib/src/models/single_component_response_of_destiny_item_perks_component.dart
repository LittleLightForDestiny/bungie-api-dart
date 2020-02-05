import 'package:json_annotation/json_annotation.dart';

import 'destiny_item_perks_component.dart';
import '../enums/component_privacy_setting.dart';

part 'single_component_response_of_destiny_item_perks_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyItemPerksComponent{
	
	SingleComponentResponseOfDestinyItemPerksComponent();

	factory SingleComponentResponseOfDestinyItemPerksComponent.fromJson(Map<String, dynamic> json) => _$SingleComponentResponseOfDestinyItemPerksComponentFromJson(json);

	/// Instanced items can have perks: benefits that the item bestows.
	/// These are related to DestinySandboxPerkDefinition, and sometimes - but not always - have human readable info. When they do, they are the icons and text that you see in an item's tooltip.
	/// Talent Grids, Sockets, and the item itself can apply Perks, which are then summarized here for your convenience.
	@JsonKey(name:'data')
	DestinyItemPerksComponent data;
	@JsonKey(name:'privacy',unknownEnumValue:ComponentPrivacySetting.None)
	ComponentPrivacySetting privacy;

	
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyItemPerksComponentToJson(this);
}