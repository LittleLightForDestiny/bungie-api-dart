import '../models/content_item_public_contract.dart';
class ContentItemPublicContractResponse{
    ContentItemPublicContract Response;
    int ErrorCode;
    int ThrottleSeconds;
    String ErrorStatus;
    String Message;
    Map<String, dynamic> MessageData;
    String DetailedErrorTrace;

    ContentItemPublicContractResponse(
		ContentItemPublicContract this.Response,
		int this.ErrorCode,
		int this.ThrottleSeconds,
		String this.ErrorStatus,
		String this.Message,
		Map<String, dynamic> this.MessageData,
		String this.DetailedErrorTrace,
	);

    static ContentItemPublicContractResponse fromJson(Map<String, dynamic> data){
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
		List<ContentItemPublicContractResponse> list = new List();
    data.forEach((item) {
      list.add(ContentItemPublicContractResponse.fromJson(item));
    });
    return list;
	}
}