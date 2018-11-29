import '../models/content_type_description.dart';
class ContentTypeDescriptionResponse{
    ContentTypeDescription Response;
    int ErrorCode;
    int ThrottleSeconds;
    String ErrorStatus;
    String Message;
    Map<String, dynamic> MessageData;
    String DetailedErrorTrace;

    ContentTypeDescriptionResponse(
		ContentTypeDescription this.Response,
		int this.ErrorCode,
		int this.ThrottleSeconds,
		String this.ErrorStatus,
		String this.Message,
		Map<String, dynamic> this.MessageData,
		String this.DetailedErrorTrace,
	);

    static ContentTypeDescriptionResponse fromJson(Map<String, dynamic> data){
		return new ContentTypeDescriptionResponse(
				ContentTypeDescription.fromJson(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<ContentTypeDescriptionResponse> fromList(List<dynamic> data){
		List<ContentTypeDescriptionResponse> list = new List();
    data.forEach((item) {
      list.add(ContentTypeDescriptionResponse.fromJson(item));
    });
    return list;
	}
}