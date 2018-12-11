import 'stream_info.dart';
class GlobalAlert{
	String alertKey;
	String alertHtml;
	String alertTimestamp;
	String alertLink;
	int alertLevel;
	int alertType;
	StreamInfo streamInfo;
	GlobalAlert(
		String this.alertKey,
		String this.alertHtml,
		String this.alertTimestamp,
		String this.alertLink,
		int this.alertLevel,
		int this.alertType,
		StreamInfo this.streamInfo,
	);

	static GlobalAlert fromJson(Map<String, dynamic> data){
		return new GlobalAlert(
				data['AlertKey'],
				data['AlertHtml'],
				data['AlertTimestamp'],
				data['AlertLink'],
				data['AlertLevel'],
				data['AlertType'],
				StreamInfo.fromJson(data['StreamInfo']),
		);
	}

	static List<GlobalAlert> fromList(List<dynamic> data){
		List<GlobalAlert> list = new List();
    data.forEach((item) {
      list.add(GlobalAlert.fromJson(item));
    });
    return list;
	}
}