import '../models/search_result_of_content_item_public_contract.dart';
class SearchResultOfContentItemPublicContractResponse{
    SearchResultOfContentItemPublicContract response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, String> messageData;
    String detailedErrorTrace;

    SearchResultOfContentItemPublicContractResponse(
		SearchResultOfContentItemPublicContract this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	);

    static SearchResultOfContentItemPublicContractResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SearchResultOfContentItemPublicContractResponse(
				data['Response'] != null ? SearchResultOfContentItemPublicContract.fromMap(data['Response']) : null,
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'] != null ? Map<String, String>.from(data['MessageData'].map((k, v)=>MapEntry(k, v))) : null,
				data['DetailedErrorTrace'],
		);
	}

	static List<SearchResultOfContentItemPublicContractResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<SearchResultOfContentItemPublicContractResponse> list = new List();
    data.forEach((item) {
      list.add(SearchResultOfContentItemPublicContractResponse.fromMap(item));
    });
    return list;
	}
}