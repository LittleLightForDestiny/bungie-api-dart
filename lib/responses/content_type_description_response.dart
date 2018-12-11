import '../models/content_type_description.dart';
class ContentTypeDescriptionResponse{
    ContentTypeDescription response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, dynamic> messageData;
    String detailedErrorTrace;

    ContentTypeDescriptionResponse(
		ContentTypeDescription this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, dynamic> this.messageData,
		String this.detailedErrorTrace,
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