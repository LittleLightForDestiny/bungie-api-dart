import '../models/core_settings_configuration.dart';
class CoreSettingsConfigurationResponse{
    CoreSettingsConfiguration response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, String> messageData;
    String detailedErrorTrace;

    CoreSettingsConfigurationResponse(
		CoreSettingsConfiguration this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	);

    static CoreSettingsConfigurationResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new CoreSettingsConfigurationResponse(
				data['Response'] != null ? CoreSettingsConfiguration.fromMap(data['Response']) : null,
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'] != null ? Map<String, String>.from(data['MessageData'].map((k, v)=>MapEntry(k, v))) : null,
				data['DetailedErrorTrace'],
		);
	}

	static List<CoreSettingsConfigurationResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<CoreSettingsConfigurationResponse> list = new List();
    data.forEach((item) {
      list.add(CoreSettingsConfigurationResponse.fromMap(item));
    });
    return list;
	}
}