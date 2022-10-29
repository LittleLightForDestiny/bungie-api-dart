import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_item_tooltip_notification.g.dart';

@JsonSerializable()
class DestinyItemTooltipNotification{	
	DestinyItemTooltipNotification();

	
	@JsonKey(name:'displayString')
	String? displayString;
	
	@JsonKey(name:'displayStyle')
	String? displayStyle;

	factory DestinyItemTooltipNotification.fromJson(Map<String, dynamic> json) {
		return _$DestinyItemTooltipNotificationFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyItemTooltipNotificationToJson(this);

	static Future<DestinyItemTooltipNotification> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyItemTooltipNotification>((json)=>DestinyItemTooltipNotification.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}