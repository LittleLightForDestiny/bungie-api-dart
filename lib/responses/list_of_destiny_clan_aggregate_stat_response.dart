import '../models/destiny_clan_aggregate_stat.dart';
class ListOfDestinyClanAggregateStatResponse{
    List<DestinyClanAggregateStat> Response;
    int ErrorCode;
    int ThrottleSeconds;
    String ErrorStatus;
    String Message;
    Map<String, dynamic> MessageData;
    String DetailedErrorTrace;

    ListOfDestinyClanAggregateStatResponse(
		List<DestinyClanAggregateStat> this.Response,
		int this.ErrorCode,
		int this.ThrottleSeconds,
		String this.ErrorStatus,
		String this.Message,
		Map<String, dynamic> this.MessageData,
		String this.DetailedErrorTrace,
	);

    static ListOfDestinyClanAggregateStatResponse fromJson(Map<String, dynamic> data){
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
		List<ListOfDestinyClanAggregateStatResponse> list = new List();
    data.forEach((item) {
      list.add(ListOfDestinyClanAggregateStatResponse.fromJson(item));
    });
    return list;
	}
}