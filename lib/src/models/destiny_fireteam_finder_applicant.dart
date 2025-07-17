import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_fireteam_finder_applicant.g.dart';

@JsonSerializable()
class DestinyFireteamFinderApplicant{	
	DestinyFireteamFinderApplicant();


	factory DestinyFireteamFinderApplicant.fromJson(Map<String, dynamic> json) {
		return _$DestinyFireteamFinderApplicantFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyFireteamFinderApplicantToJson(this);

	static Future<DestinyFireteamFinderApplicant> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyFireteamFinderApplicant>((json)=>DestinyFireteamFinderApplicant.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}