import '../models/public_partnership_detail.dart';
class CEListOfPublicPartnershipDetailResponse{
    List<PublicPartnershipDetail> Response;
    int ErrorCode;
    int ThrottleSeconds;
    String ErrorStatus;
    String Message;
    Map<String, dynamic> MessageData;
    String DetailedErrorTrace;

    CEListOfPublicPartnershipDetailResponse(
		List<PublicPartnershipDetail> this.Response,
		int this.ErrorCode,
		int this.ThrottleSeconds,
		String this.ErrorStatus,
		String this.Message,
		Map<String, dynamic> this.MessageData,
		String this.DetailedErrorTrace,
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