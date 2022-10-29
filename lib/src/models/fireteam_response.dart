import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'fireteam_summary.dart';
import 'fireteam_member.dart';

part 'fireteam_response.g.dart';

@JsonSerializable()
class FireteamResponse{	
	FireteamResponse();

	
	@JsonKey(name:'Summary')
	FireteamSummary? summary;
	
	@JsonKey(name:'Members')
	List<FireteamMember>? members;
	
	@JsonKey(name:'Alternates')
	List<FireteamMember>? alternates;

	factory FireteamResponse.fromJson(Map<String, dynamic> json) {
		return _$FireteamResponseFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$FireteamResponseToJson(this);

	static Future<FireteamResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, FireteamResponse>((json)=>FireteamResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}