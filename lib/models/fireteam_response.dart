import 'fireteam_summary.dart';
import 'fireteam_member.dart';
import 'fireteam_member.dart';
class FireteamResponse{
	FireteamSummary summary;
	List<FireteamMember> members;
	List<FireteamMember> alternates;
	FireteamResponse(
		FireteamSummary this.summary,
		List<FireteamMember> this.members,
		List<FireteamMember> this.alternates,
	);

	static FireteamResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new FireteamResponse(
				FireteamSummary.fromMap(data['Summary']),
				FireteamMember.fromList(data['Members']),
				FireteamMember.fromList(data['Alternates']),
		);
	}

	static List<FireteamResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<FireteamResponse> list = new List();
    data.forEach((item) {
      list.add(FireteamResponse.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['Summary'] = summary.toMap();
			data['Members'] = members.map((item)=>item.toMap());
			data['Alternates'] = alternates.map((item)=>item.toMap());
	}
}