
import 'package:json_annotation/json_annotation.dart';
part 'awa_permission_requested.g.dart';

@JsonSerializable()
class AwaPermissionRequested {

	/// Type of advanced write action.
	@JsonKey(name:'type')
	int type;

	/// Item instance ID the action shall be applied to. This is optional for all but a new AwaType values. Rule of thumb is to provide the item instance ID if one is available.
	@JsonKey(name:'affectedItemId')
	String affectedItemId;

	/// Destiny membership type of the account to modify.
	@JsonKey(name:'membershipType')
	int membershipType;

	/// Destiny character ID, if applicable, that will be affected by the action.
	@JsonKey(name:'characterId')
	String characterId;
	AwaPermissionRequested();

	factory AwaPermissionRequested.fromJson(Map<String, dynamic> json) => _$AwaPermissionRequestedFromJson(json);
	
	Map<String, dynamic> toJson() => _$AwaPermissionRequestedToJson(this);
}
