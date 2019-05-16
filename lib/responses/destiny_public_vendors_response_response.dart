import '../models/destiny_public_vendors_response.dart';
class DestinyPublicVendorsResponseResponse{
    DestinyPublicVendorsResponse response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, String> messageData;
    String detailedErrorTrace;

    DestinyPublicVendorsResponseResponse(
		DestinyPublicVendorsResponse this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	);

    static DestinyPublicVendorsResponseResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyPublicVendorsResponseResponse(
				data['Response'] != null ? DestinyPublicVendorsResponse.fromMap(data['Response']) : null,
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'] != null ? Map<String, String>.from(data['MessageData'].map((k, v)=>MapEntry(k, v))) : null,
				data['DetailedErrorTrace'],
		);
	}

	static List<DestinyPublicVendorsResponseResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyPublicVendorsResponseResponse> list = new List();
    data.forEach((item) {
      list.add(DestinyPublicVendorsResponseResponse.fromMap(item));
    });
    return list;
	}
}