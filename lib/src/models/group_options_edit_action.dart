import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'group_options_edit_action.g.dart';

@JsonSerializable()
class GroupOptionsEditAction{	
	GroupOptionsEditAction();

	
	/// Minimum Member Level allowed to invite new members to group
	/// Always Allowed: Founder, Acting Founder
	/// True means admins have this power, false means they don't
	/// Default is false for clans, true for groups.
	@JsonKey(name:'InvitePermissionOverride')
	bool? invitePermissionOverride;
	
	/// Minimum Member Level allowed to update group culture
	/// Always Allowed: Founder, Acting Founder
	/// True means admins have this power, false means they don't
	/// Default is false for clans, true for groups.
	@JsonKey(name:'UpdateCulturePermissionOverride')
	bool? updateCulturePermissionOverride;
	
	/// Minimum Member Level allowed to host guided games
	/// Always Allowed: Founder, Acting Founder, Admin
	/// Allowed Overrides: None, Member, Beginner
	/// Default is Member for clans, None for groups, although this means nothing for groups.
	@JsonKey(name:'HostGuidedGamePermissionOverride')
	int? hostGuidedGamePermissionOverride;
	
	/// Minimum Member Level allowed to update banner
	/// Always Allowed: Founder, Acting Founder
	/// True means admins have this power, false means they don't
	/// Default is false for clans, true for groups.
	@JsonKey(name:'UpdateBannerPermissionOverride')
	bool? updateBannerPermissionOverride;
	
	/// Level to join a member at when accepting an invite, application, or joining an open clan
	/// Default is Beginner.
	@JsonKey(name:'JoinLevel')
	int? joinLevel;

	factory GroupOptionsEditAction.fromJson(Map<String, dynamic> json) {
		return _$GroupOptionsEditActionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$GroupOptionsEditActionToJson(this);

	static Future<GroupOptionsEditAction> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, GroupOptionsEditAction>((json)=>GroupOptionsEditAction.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}