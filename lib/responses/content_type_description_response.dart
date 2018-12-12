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

    static ContentTypeDescriptionResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new ContentTypeDescriptionResponse(
				ContentTypeDescription.fromMap(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<ContentTypeDescriptionResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<ContentTypeDescriptionResponse> list = new List();
    data.forEach((item) {
      list.add(ContentTypeDescriptionResponse.fromMap(item));
    });
    return list;
	}
}