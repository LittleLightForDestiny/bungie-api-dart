import '../models/destiny_vendors_response.dart';
class DestinyVendorsResponseResponse{
    DestinyVendorsResponse Response;
    int ErrorCode;
    int ThrottleSeconds;
    String ErrorStatus;
    String Message;
    Map<String, dynamic> MessageData;
    String DetailedErrorTrace;

    DestinyVendorsResponseResponse(
		DestinyVendorsResponse this.Response,
		int this.ErrorCode,
		int this.ThrottleSeconds,
		String this.ErrorStatus,
		String this.Message,
		Map<String, dynamic> this.MessageData,
		String this.DetailedErrorTrace,
	);

    static DestinyVendorsResponseResponse fromJson(Map<String, dynamic> data){
		return new DestinyVendorsResponseResponse(
				DestinyVendorsResponse.fromJson(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<DestinyVendorsResponseResponse> fromList(List<dynamic> data){
		List<DestinyVendorsResponseResponse> list = new List();
    data.forEach((item) {
      list.add(DestinyVendorsResponseResponse.fromJson(item));
    });
    return list;
	}
}