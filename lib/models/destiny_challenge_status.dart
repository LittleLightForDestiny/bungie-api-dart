import 'destiny_objective_progress.dart';
class DestinyChallengeStatus{
	DestinyObjectiveProgress objective;
	DestinyChallengeStatus(
		DestinyObjectiveProgress this.objective,
	);

	static DestinyChallengeStatus fromJson(Map<String, dynamic> data){
		return new DestinyChallengeStatus(
				data['objective'],
		);
	}

	static List<DestinyChallengeStatus> fromList(List<dynamic> data){
		List<DestinyChallengeStatus> list = new List();
    data.forEach((item) {
      list.add(DestinyChallengeStatus.fromJson(item));
    });
    return list;
	}
}