import '../models/public_partnership_detail.dart';
class CEListOfPublicPartnershipDetailResponse{
    List<PublicPartnershipDetail> response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, String> messageData;
    String detailedErrorTrace;

    CEListOfPublicPartnershipDetailResponse(
		List<PublicPartnershipDetail> this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	);

    static CEListOfPublicPartnershipDetailResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new CEListOfPublicPartnershipDetailResponse(
				data['Response'] != null ? PublicPartnershipDetail.fromList(data['Response']) : null,
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'] != null ? Map<String, String>.from(data['MessageData'].map((k, v)=>MapEntry(k, v))) : null,
				data['DetailedErrorTrace'],
		);
	}

	static List<CEListOfPublicPartnershipDetailResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<CEListOfPublicPartnershipDetailResponse> list = new List();
    data.forEach((item) {
      list.add(CEListOfPublicPartnershipDetailResponse.fromMap(item));
    });
    return list;
	}
}