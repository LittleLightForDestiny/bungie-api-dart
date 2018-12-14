import '../models/destiny_clan_aggregate_stat.dart';
class ListOfDestinyClanAggregateStatResponse{
    List<DestinyClanAggregateStat> response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, String> messageData;
    String detailedErrorTrace;

    ListOfDestinyClanAggregateStatResponse(
		List<DestinyClanAggregateStat> this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	);

    static ListOfDestinyClanAggregateStatResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new ListOfDestinyClanAggregateStatResponse(
				data['Response'] != null ? DestinyClanAggregateStat.fromList(data['Response']) : null,
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'] != null ? Map<String, String>.from(data['MessageData'].map((k, v)=>MapEntry(k, v))) : null,
				data['DetailedErrorTrace'],
		);
	}

	static List<ListOfDestinyClanAggregateStatResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<ListOfDestinyClanAggregateStatResponse> list = new List();
    data.forEach((item) {
      list.add(ListOfDestinyClanAggregateStatResponse.fromMap(item));
    });
    return list;
	}
}