import 'destiny_item_reusable_plugs_component.dart';

import 'package:json_annotation/json_annotation.dart';
part 'single_component_response_of_destiny_item_reusable_plugs_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyItemReusablePlugsComponent{
	
	@JsonKey(name:'data')
	DestinyItemReusablePlugsComponent data;
	
	@JsonKey(name:'privacy')
	int privacy;
	SingleComponentResponseOfDestinyItemReusablePlugsComponent();

	factory SingleComponentResponseOfDestinyItemReusablePlugsComponent.fromJson(Map<String, dynamic> json) => _$SingleComponentResponseOfDestinyItemReusablePlugsComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyItemReusablePlugsComponentToJson(this);
}