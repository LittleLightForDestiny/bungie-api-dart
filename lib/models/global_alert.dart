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
		this.alertKey,
		this.alertHtml,
		this.alertTimestamp,
		this.alertLink,
		this.alertLevel,
		this.alertType,
		this.streamInfo,
	);

	static GlobalAlert fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new GlobalAlert(
				data['AlertKey'],
				data['AlertHtml'],
				data['AlertTimestamp'],
				data['AlertLink'],
				data['AlertLevel'],
				data['AlertType'],
				data['StreamInfo'] != null ? StreamInfo.fromMap(data['StreamInfo']) : null,
		);
	}

	static List<GlobalAlert> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<GlobalAlert> list = new List();
    data.forEach((item) {
      list.add(GlobalAlert.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['AlertKey'] = this.alertKey;
			data['AlertHtml'] = this.alertHtml;
			data['AlertTimestamp'] = this.alertTimestamp;
			data['AlertLink'] = this.alertLink;
			data['AlertLevel'] = this.alertLevel;
			data['AlertType'] = this.alertType;
			data['StreamInfo'] = this.streamInfo.toMap();
		return data;
	}
}