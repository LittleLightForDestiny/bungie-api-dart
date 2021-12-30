import 'package:json_annotation/json_annotation.dart';

import 'fireteam_summary.dart';
import 'fireteam_member.dart';

part 'fireteam_response.g.dart';

@JsonSerializable()
class FireteamResponse{	
	FireteamResponse();

	factory FireteamResponse.fromJson(Map<String, dynamic> json) {
		return _$FireteamResponseFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$FireteamResponseToJson(this);
	
	@JsonKey(name:'Summary')
	FireteamSummary? summary;
	
	@JsonKey(name:'Members')
	List<FireteamMember>? members;
	
	@JsonKey(name:'Alternates')
	List<FireteamMember>? alternates;
}