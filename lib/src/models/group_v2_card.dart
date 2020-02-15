import 'package:json_annotation/json_annotation.dart';

import '../enums/group_type.dart';
import '../enums/membership_option.dart';
import '../enums/capabilities.dart';
import 'group_v2_clan_info.dart';

part 'group_v2_card.g.dart';

/// A small infocard of group information, usually used for when a list of groups are returned
@JsonSerializable()
class GroupV2Card{
	
	GroupV2Card();

	factory GroupV2Card.fromJson(Map<String, dynamic> json) {
		try{
			return _$GroupV2CardFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'groupId')
	String groupId;
	@JsonKey(name:'name')
	String name;
	@JsonKey(name:'groupType',unknownEnumValue:GroupType.ProtectedInvalidEnumValue)
	GroupType groupType;
	@JsonKey(name:'creationDate')
	String creationDate;
	@JsonKey(name:'about')
	String about;
	@JsonKey(name:'motto')
	String motto;
	@JsonKey(name:'memberCount')
	int memberCount;
	@JsonKey(name:'locale')
	String locale;
	@JsonKey(name:'membershipOption',unknownEnumValue:MembershipOption.ProtectedInvalidEnumValue)
	MembershipOption membershipOption;
	@JsonKey(name:'capabilities')
	Capabilities capabilities;
	/// This contract contains clan-specific group information. It does not include any investment data.
	@JsonKey(name:'clanInfo')
	GroupV2ClanInfo clanInfo;
	@JsonKey(name:'avatarPath')
	String avatarPath;
	@JsonKey(name:'theme')
	String theme;

	
	
	Map<String, dynamic> toJson() => _$GroupV2CardToJson(this);
}