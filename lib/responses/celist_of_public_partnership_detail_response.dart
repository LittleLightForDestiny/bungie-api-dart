import '../models/public_partnership_detail.dart';
class CEListOfPublicPartnershipDetailResponse{
    List<PublicPartnershipDetail> response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, dynamic> messageData;
    String detailedErrorTrace;

    CEListOfPublicPartnershipDetailResponse(
		List<PublicPartnershipDetail> this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, dynamic> this.messageData,
		String this.detailedErrorTrace,
	);

    static CEListOfPublicPartnershipDetailResponse fromJson(Map<String, dynamic> data){
		return new CEListOfPublicPartnershipDetailResponse(
				PublicPartnershipDetail.fromList(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<CEListOfPublicPartnershipDetailResponse> fromList(List<dynamic> data){
		List<CEListOfPublicPartnershipDetailResponse> list = new List();
    data.forEach((item) {
      list.add(CEListOfPublicPartnershipDetailResponse.fromJson(item));
    });
    return list;
	}
}