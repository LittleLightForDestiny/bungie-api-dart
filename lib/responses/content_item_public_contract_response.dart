import '../models/content_item_public_contract.dart';
class ContentItemPublicContractResponse{
    ContentItemPublicContract response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, dynamic> messageData;
    String detailedErrorTrace;

    ContentItemPublicContractResponse(
		ContentItemPublicContract this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, dynamic> this.messageData,
		String this.detailedErrorTrace,
	);

    static ContentItemPublicContractResponse fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new ContentItemPublicContractResponse(
				ContentItemPublicContract.fromJson(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<ContentItemPublicContractResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<ContentItemPublicContractResponse> list = new List();
    data.forEach((item) {
      list.add(ContentItemPublicContractResponse.fromJson(item));
    });
    return list;
	}
}