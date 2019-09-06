
import 'package:json_annotation/json_annotation.dart';
part 'group_options_edit_action.g.dart';

@JsonSerializable()
class GroupOptionsEditAction {

	/// Minimum Member Level allowed to invite new members to group
	/// Always Allowed: Founder, Acting Founder
	/// True means admins have this power, false means they don&#39;t
	/// Default is false for clans, true for groups.
	@JsonKey(name:'InvitePermissionOverride')
	bool invitePermissionOverride;

	/// Minimum Member Level allowed to update group culture
	/// Always Allowed: Founder, Acting Founder
	/// True means admins have this power, false means they don&#39;t
	/// Default is false for clans, true for groups.
	@JsonKey(name:'UpdateCulturePermissionOverride')
	bool updateCulturePermissionOverride;

	/// Minimum Member Level allowed to host guided games
	/// Always Allowed: Founder, Acting Founder, Admin
	/// Allowed Overrides: None, Member, Beginner
	/// Default is Member for clans, None for groups, although this means nothing for groups.
	@JsonKey(name:'HostGuidedGamePermissionOverride')
	int hostGuidedGamePermissionOverride;

	/// Minimum Member Level allowed to update banner
	/// Always Allowed: Founder, Acting Founder
	/// True means admins have this power, false means they don&#39;t
	/// Default is false for clans, true for groups.
	@JsonKey(name:'UpdateBannerPermissionOverride')
	bool updateBannerPermissionOverride;

	/// Level to join a member at when accepting an invite, application, or joining an open clan
	/// Default is Beginner.
	@JsonKey(name:'JoinLevel')
	int joinLevel;
	GroupOptionsEditAction();

	factory GroupOptionsEditAction.fromJson(Map<String, dynamic> json) => _$GroupOptionsEditActionFromJson(json);
	
	Map<String, dynamic> toJson() => _$GroupOptionsEditActionToJson(this);
}
