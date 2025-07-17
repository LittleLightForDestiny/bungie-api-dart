import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_fireteam_finder_applicant.dart';

part 'destiny_fireteam_finder_applicant_set.g.dart';

@JsonSerializable()
class DestinyFireteamFinderApplicantSet{	
	DestinyFireteamFinderApplicantSet();

	
	@JsonKey(name:'applicants')
	List<DestinyFireteamFinderApplicant>? applicants;

	factory DestinyFireteamFinderApplicantSet.fromJson(Map<String, dynamic> json) {
		return _$DestinyFireteamFinderApplicantSetFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyFireteamFinderApplicantSetToJson(this);

	static Future<DestinyFireteamFinderApplicantSet> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyFireteamFinderApplicantSet>((json)=>DestinyFireteamFinderApplicantSet.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}