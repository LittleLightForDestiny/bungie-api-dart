import '../models/destiny_clan_aggregate_stat.dart';
class ListOfDestinyClanAggregateStatResponse{
    List<DestinyClanAggregateStat> response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, dynamic> messageData;
    String detailedErrorTrace;

    ListOfDestinyClanAggregateStatResponse(
		List<DestinyClanAggregateStat> this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, dynamic> this.messageData,
		String this.detailedErrorTrace,
	);

    static ListOfDestinyClanAggregateStatResponse fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new ListOfDestinyClanAggregateStatResponse(
				DestinyClanAggregateStat.fromList(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<ListOfDestinyClanAggregateStatResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<ListOfDestinyClanAggregateStatResponse> list = new List();
    data.forEach((item) {
      list.add(ListOfDestinyClanAggregateStatResponse.fromJson(item));
    });
    return list;
	}
}