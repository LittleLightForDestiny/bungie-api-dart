import '../models/destiny_vendors_response.dart';
class DestinyVendorsResponseResponse{
    DestinyVendorsResponse response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, dynamic> messageData;
    String detailedErrorTrace;

    DestinyVendorsResponseResponse(
		DestinyVendorsResponse this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, dynamic> this.messageData,
		String this.detailedErrorTrace,
	);

    static DestinyVendorsResponseResponse fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
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
		if(data == null) {
			return null;
		};
		List<DestinyVendorsResponseResponse> list = new List();
    data.forEach((item) {
      list.add(DestinyVendorsResponseResponse.fromJson(item));
    });
    return list;
	}
}