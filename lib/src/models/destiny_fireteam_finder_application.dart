import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import '../enums/destiny_fireteam_finder_application_state.dart';
import 'destiny_fireteam_finder_player_id.dart';
import 'destiny_fireteam_finder_applicant_set.dart';
import '../enums/destiny_fireteam_finder_application_type.dart';

part 'destiny_fireteam_finder_application.g.dart';

@JsonSerializable()
class DestinyFireteamFinderApplication{	
	DestinyFireteamFinderApplication();

	
	@JsonKey(name:'applicationId')
	String? applicationId;
	
	@JsonKey(name:'revision')
	int? revision;
	
	@JsonKey(name:'state',fromJson:decodeDestinyFireteamFinderApplicationState,toJson:encodeDestinyFireteamFinderApplicationState)
	DestinyFireteamFinderApplicationState? state;
	
	@JsonKey(name:'submitterId')
	DestinyFireteamFinderPlayerId? submitterId;
	
	@JsonKey(name:'referralToken')
	String? referralToken;
	
	@JsonKey(name:'applicantSet')
	DestinyFireteamFinderApplicantSet? applicantSet;
	
	@JsonKey(name:'applicationType',fromJson:decodeDestinyFireteamFinderApplicationType,toJson:encodeDestinyFireteamFinderApplicationType)
	DestinyFireteamFinderApplicationType? applicationType;
	
	@JsonKey(name:'listingId')
	String? listingId;
	
	@JsonKey(name:'createdDateTime')
	String? createdDateTime;

	factory DestinyFireteamFinderApplication.fromJson(Map<String, dynamic> json) {
		return _$DestinyFireteamFinderApplicationFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyFireteamFinderApplicationToJson(this);

	static Future<DestinyFireteamFinderApplication> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyFireteamFinderApplication>((json)=>DestinyFireteamFinderApplication.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}