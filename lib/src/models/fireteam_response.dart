import 'fireteam_summary.dart';
import 'fireteam_member.dart';

import 'package:json_annotation/json_annotation.dart';
part 'fireteam_response.g.dart';

@JsonSerializable()
class FireteamResponse {

	@JsonKey(name:'Summary')
	FireteamSummary summary;

	@JsonKey(name:'Members')
	List<FireteamMember> members;

	@JsonKey(name:'Alternates')
	List<FireteamMember> alternates;
	FireteamResponse();

	factory FireteamResponse.fromJson(Map<String, dynamic> json) => _$FireteamResponseFromJson(json);
	
	Map<String, dynamic> toJson() => _$FireteamResponseToJson(this);
}
