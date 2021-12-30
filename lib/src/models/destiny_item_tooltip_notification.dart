import 'package:json_annotation/json_annotation.dart';


part 'destiny_item_tooltip_notification.g.dart';

@JsonSerializable()
class DestinyItemTooltipNotification{	
	DestinyItemTooltipNotification();

	factory DestinyItemTooltipNotification.fromJson(Map<String, dynamic> json) {
		return _$DestinyItemTooltipNotificationFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyItemTooltipNotificationToJson(this);
	
	@JsonKey(name:'displayString')
	String? displayString;
	
	@JsonKey(name:'displayStyle')
	String? displayStyle;
}