import 'fireteam_summary.dart';
import 'fireteam_member.dart';

/*  */
class FireteamResponse{
	
	/*  */
	FireteamSummary summary;
	
	/*  */
	List<FireteamMember> members;
	
	/*  */
	List<FireteamMember> alternates;
	FireteamResponse(
		this.summary,
		this.members,
		this.alternates,
	);

	static FireteamResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new FireteamResponse(
				data['Summary'] != null ? FireteamSummary.fromMap(data['Summary']) : null,
				data['Members'] != null ? FireteamMember.fromList(data['Members']) : null,
				data['Alternates'] != null ? FireteamMember.fromList(data['Alternates']) : null,
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
			data['Summary'] = this.summary.toMap();
			data['Members'] = this.members.map((item)=>item.toMap()).toList();
			data['Alternates'] = this.alternates.map((item)=>item.toMap()).toList();
		return data;
	}
}