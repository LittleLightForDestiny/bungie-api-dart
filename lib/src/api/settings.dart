import '../helpers/http.dart';
import '../responses/core_settings_configuration_response.dart';
class Settings{
    /// Get the common settings used by the Bungie.Net environment.
    static Future<CoreSettingsConfigurationResponse> getCommonSettings (
        HttpClient client,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final HttpClientConfig config = HttpClientConfig('GET', '/Settings/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return CoreSettingsConfigurationResponse.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
}