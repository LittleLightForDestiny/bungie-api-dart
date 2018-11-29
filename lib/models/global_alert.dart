import 'stream_info.dart';
class GlobalAlert{
	String AlertKey;
	String AlertHtml;
	String AlertTimestamp;
	String AlertLink;
	int AlertLevel;
	int AlertType;
	StreamInfo StreamInfo;
	GlobalAlert(
		String this.AlertKey,
		String this.AlertHtml,
		String this.AlertTimestamp,
		String this.AlertLink,
		int this.AlertLevel,
		int this.AlertType,
		StreamInfo this.StreamInfo,
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