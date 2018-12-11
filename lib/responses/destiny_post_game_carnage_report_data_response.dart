import '../models/destiny_post_game_carnage_report_data.dart';
class DestinyPostGameCarnageReportDataResponse{
    DestinyPostGameCarnageReportData response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, dynamic> messageData;
    String detailedErrorTrace;

    DestinyPostGameCarnageReportDataResponse(
		DestinyPostGameCarnageReportData this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, dynamic> this.messageData,
		String this.detailedErrorTrace,
	);

    static DestinyPostGameCarnageReportDataResponse fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyPostGameCarnageReportDataResponse(
				DestinyPostGameCarnageReportData.fromJson(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<DestinyPostGameCarnageReportDataResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyPostGameCarnageReportDataResponse> list = new List();
    data.forEach((item) {
      list.add(DestinyPostGameCarnageReportDataResponse.fromJson(item));
    });
    return list;
	}
}