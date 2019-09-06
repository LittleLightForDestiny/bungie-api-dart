
import 'package:json_annotation/json_annotation.dart';
part 'destiny_equip_item_result.g.dart';

/// The results of an Equipping operation performed through the Destiny API.
@JsonSerializable()
class DestinyEquipItemResult {

	/// The instance ID of the item in question (all items that can be equipped must, but definition, be Instanced and thus have an Instance ID that you can use to refer to them)
	@JsonKey(name:'itemInstanceId')
	String itemInstanceId;

	/// A PlatformErrorCodes enum indicating whether it succeeded, and if it failed why.
	@JsonKey(name:'equipStatus')
	int equipStatus;
	DestinyEquipItemResult();

	factory DestinyEquipItemResult.fromJson(Map<String, dynamic> json) => _$DestinyEquipItemResultFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyEquipItemResultToJson(this);
}
