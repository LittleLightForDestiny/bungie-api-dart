import '../models/destiny_post_game_carnage_report_data.dart';
class DestinyPostGameCarnageReportDataResponse{
    DestinyPostGameCarnageReportData Response;
    int ErrorCode;
    int ThrottleSeconds;
    String ErrorStatus;
    String Message;
    Map<String, dynamic> MessageData;
    String DetailedErrorTrace;

    DestinyPostGameCarnageReportDataResponse(
		DestinyPostGameCarnageReportData this.Response,
		int this.ErrorCode,
		int this.ThrottleSeconds,
		String this.ErrorStatus,
		String this.Message,
		Map<String, dynamic> this.MessageData,
		String this.DetailedErrorTrace,
	);

    static DestinyPostGameCarnageReportDataResponse fromJson(Map<String, dynamic> data){
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
		List<DestinyPostGameCarnageReportDataResponse> list = new List();
    data.forEach((item) {
      list.add(DestinyPostGameCarnageReportDataResponse.fromJson(item));
    });
    return list;
	}
}