import '../models/search_result_of_content_item_public_contract.dart';
class SearchResultOfContentItemPublicContractResponse{
    SearchResultOfContentItemPublicContract Response;
    int ErrorCode;
    int ThrottleSeconds;
    String ErrorStatus;
    String Message;
    Map<String, dynamic> MessageData;
    String DetailedErrorTrace;

    SearchResultOfContentItemPublicContractResponse(
		SearchResultOfContentItemPublicContract this.Response,
		int this.ErrorCode,
		int this.ThrottleSeconds,
		String this.ErrorStatus,
		String this.Message,
		Map<String, dynamic> this.MessageData,
		String this.DetailedErrorTrace,
	);

    static SearchResultOfContentItemPublicContractResponse fromJson(Map<String, dynamic> data){
		return new SearchResultOfContentItemPublicContractResponse(
				SearchResultOfContentItemPublicContract.fromJson(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<SearchResultOfContentItemPublicContractResponse> fromList(List<dynamic> data){
		List<SearchResultOfContentItemPublicContractResponse> list = new List();
    data.forEach((item) {
      list.add(SearchResultOfContentItemPublicContractResponse.fromJson(item));
    });
    return list;
	}
}