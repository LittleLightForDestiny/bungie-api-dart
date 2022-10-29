import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import '../enums/platform_error_codes.dart';

part 'destiny_equip_item_result.g.dart';

/// The results of an Equipping operation performed through the Destiny API.
@JsonSerializable()
class DestinyEquipItemResult{	
	DestinyEquipItemResult();

	
	/// The instance ID of the item in question (all items that can be equipped must, but definition, be Instanced and thus have an Instance ID that you can use to refer to them)
	@JsonKey(name:'itemInstanceId')
	String? itemInstanceId;
	
	/// A PlatformErrorCodes enum indicating whether it succeeded, and if it failed why.
	@JsonKey(name:'equipStatus',fromJson:decodePlatformErrorCodes,toJson:encodePlatformErrorCodes)
	PlatformErrorCodes? equipStatus;

	factory DestinyEquipItemResult.fromJson(Map<String, dynamic> json) {
		return _$DestinyEquipItemResultFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyEquipItemResultToJson(this);

	static Future<DestinyEquipItemResult> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyEquipItemResult>((json)=>DestinyEquipItemResult.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}