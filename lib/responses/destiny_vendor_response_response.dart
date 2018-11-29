import '../models/destiny_vendor_response.dart';
class DestinyVendorResponseResponse{
    DestinyVendorResponse Response;
    int ErrorCode;
    int ThrottleSeconds;
    String ErrorStatus;
    String Message;
    Map<String, dynamic> MessageData;
    String DetailedErrorTrace;

    DestinyVendorResponseResponse(
		DestinyVendorResponse this.Response,
		int this.ErrorCode,
		int this.ThrottleSeconds,
		String this.ErrorStatus,
		String this.Message,
		Map<String, dynamic> this.MessageData,
		String this.DetailedErrorTrace,
	);

    static DestinyVendorResponseResponse fromJson(Map<String, dynamic> data){
		return new DestinyVendorResponseResponse(
				DestinyVendorResponse.fromJson(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<DestinyVendorResponseResponse> fromList(List<dynamic> data){
		List<DestinyVendorResponseResponse> list = new List();
    data.forEach((item) {
      list.add(DestinyVendorResponseResponse.fromJson(item));
    });
    return list;
	}
}