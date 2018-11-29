import 'fireteam_summary.dart';
import 'fireteam_member.dart';
import 'fireteam_member.dart';
class FireteamResponse{
	FireteamSummary Summary;
	List<FireteamMember> Members;
	List<FireteamMember> Alternates;
	FireteamResponse(
		FireteamSummary this.Summary,
		List<FireteamMember> this.Members,
		List<FireteamMember> this.Alternates,
	);

	static FireteamResponse fromJson(Map<String, dynamic> data){
		return new FireteamResponse(
				FireteamSummary.fromJson(data['Summary']),
				FireteamMember.fromList(data['Members']),
				FireteamMember.fromList(data['Alternates']),
		);
	}

	static List<FireteamResponse> fromList(List<dynamic> data){
		List<FireteamResponse> list = new List();
    data.forEach((item) {
      list.add(FireteamResponse.fromJson(item));
    });
    return list;
	}
}