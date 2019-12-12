import 'package:json_annotation/json_annotation.dart';


part 'destiny_profile_transitory_party_member.g.dart';

/// This is some bare minimum information about a party member in a Fireteam. Unfortunately, without great computational expense on our side we can only get at the data contained here. I&#39;d like to give you a character ID for example, but we don&#39;t have it. But we do have these three pieces of information. May they help you on your quest to show meaningful data about current Fireteams.
/// Notably, we don&#39;t and can&#39;t feasibly return info on characters. If you can, try to use just the data below for your UI and purposes. Only hit us with further queries if you absolutely must know the character ID of the currently playing character. Pretty please with sugar on top.
@JsonSerializable()
class DestinyProfileTransitoryPartyMember{
	
	DestinyProfileTransitoryPartyMember();

	factory DestinyProfileTransitoryPartyMember.fromJson(Map<String, dynamic> json) => _$DestinyProfileTransitoryPartyMemberFromJson(json);

	/// The Membership ID that matches the party member.
	@JsonKey(name:'membershipId')
	String membershipId;
	/// The identifier for the DestinyInventoryItemDefinition of the player&#39;s emblem.
	@JsonKey(name:'emblemHash')
	int emblemHash;
	/// The player&#39;s last known display name.
	@JsonKey(name:'displayName')
	String displayName;
	/// A Flags Enumeration value indicating the states that the player is in relevant to being on a fireteam.
	@JsonKey(name:'status')
	int status;

	
	
	Map<String, dynamic> toJson() => _$DestinyProfileTransitoryPartyMemberToJson(this);
}