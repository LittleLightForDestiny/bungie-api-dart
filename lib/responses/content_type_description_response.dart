import '../models/content_type_description.dart';
class ContentTypeDescriptionResponse{
    ContentTypeDescription response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, String> messageData;
    String detailedErrorTrace;

    ContentTypeDescriptionResponse(
		ContentTypeDescription this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	);

    static ContentTypeDescriptionResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new ContentTypeDescriptionResponse(
				data['Response'] != null ? ContentTypeDescription.fromMap(data['Response']) : null,
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'] != null ? Map<String, String>.from(data['MessageData'].map((k, v)=>MapEntry(k, v))) : null,
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