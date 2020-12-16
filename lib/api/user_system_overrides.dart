import '../helpers/http.dart';
import '../responses/dictionary_ofstring_and_core_system_response.dart';
class UserSystemOverrides{
    /// Get the user-specific system overrides that should be respected alongside common systems.
    static Future<DictionaryOfstringAndCoreSystemResponse> getUserSystemOverrides (
        HttpClient client,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final HttpClientConfig config = HttpClientConfig('GET', '/UserSystemOverrides/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return DictionaryOfstringAndCoreSystemResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
}