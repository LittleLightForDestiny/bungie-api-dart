import 'destiny_objective_progress.dart';
class DestinyChallengeStatus{
	DestinyObjectiveProgress objective;
	DestinyChallengeStatus(
		this.objective,
	);

	static DestinyChallengeStatus fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyChallengeStatus(
				data['objective'] != null ? DestinyObjectiveProgress.fromMap(data['objective']) : null,
		);
	}

	static List<DestinyChallengeStatus> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyChallengeStatus> list = new List();
    data.forEach((item) {
      list.add(DestinyChallengeStatus.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['objective'] = this.objective;
		return data;
	}
}