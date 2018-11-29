import 'destiny_public_activity_status.dart';
class TrendingEntryDestinyActivity{
	int activityHash;
	DestinyPublicActivityStatus status;
	TrendingEntryDestinyActivity(
		int this.activityHash,
		DestinyPublicActivityStatus this.status,
	);

	static TrendingEntryDestinyActivity fromJson(Map<String, dynamic> data){
		return new TrendingEntryDestinyActivity(
				data['activityHash'],
				DestinyPublicActivityStatus.fromJson(data['status']),
		);
	}

	static List<TrendingEntryDestinyActivity> fromList(List<dynamic> data){
		List<TrendingEntryDestinyActivity> list = new List();
    data.forEach((item) {
      list.add(TrendingEntryDestinyActivity.fromJson(item));
    });
    return list;
	}
}