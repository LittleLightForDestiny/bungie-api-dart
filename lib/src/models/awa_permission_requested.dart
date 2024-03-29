import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import '../enums/awa_type.dart';
import '../enums/bungie_membership_type.dart';

part 'awa_permission_requested.g.dart';

@JsonSerializable()
class AwaPermissionRequested{	
	AwaPermissionRequested();

	
	/// Type of advanced write action.
	@JsonKey(name:'type',fromJson:decodeAwaType,toJson:encodeAwaType)
	AwaType? type;
	
	/// Item instance ID the action shall be applied to. This is optional for all but a new AwaType values. Rule of thumb is to provide the item instance ID if one is available.
	@JsonKey(name:'affectedItemId')
	String? affectedItemId;
	
	/// Destiny membership type of the account to modify.
	@JsonKey(name:'membershipType',fromJson:decodeBungieMembershipType,toJson:encodeBungieMembershipType)
	BungieMembershipType? membershipType;
	
	/// Destiny character ID, if applicable, that will be affected by the action.
	@JsonKey(name:'characterId')
	String? characterId;

	factory AwaPermissionRequested.fromJson(Map<String, dynamic> json) {
		return _$AwaPermissionRequestedFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$AwaPermissionRequestedToJson(this);

	static Future<AwaPermissionRequested> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, AwaPermissionRequested>((json)=>AwaPermissionRequested.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}