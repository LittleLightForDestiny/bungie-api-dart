import '../models/destiny_post_game_carnage_report_data.dart';
class DestinyPostGameCarnageReportDataResponse{
    DestinyPostGameCarnageReportData response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, String> messageData;
    String detailedErrorTrace;

    DestinyPostGameCarnageReportDataResponse(
		DestinyPostGameCarnageReportData this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	);

    static DestinyPostGameCarnageReportDataResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyPostGameCarnageReportDataResponse(
				data['Response'] != null ? DestinyPostGameCarnageReportData.fromMap(data['Response']) : null,
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'] != null ? Map<String, String>.from(data['MessageData'].map((k, v)=>MapEntry(k, v))) : null,
				data['DetailedErrorTrace'],
		);
	}

	static List<DestinyPostGameCarnageReportDataResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyPostGameCarnageReportDataResponse> list = new List();
    data.forEach((item) {
      list.add(DestinyPostGameCarnageReportDataResponse.fromMap(item));
    });
    return list;
	}
}