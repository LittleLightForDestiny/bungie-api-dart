import '../helpers/http.dart';
import '../enums/platform_friend_type.dart';
import '../responses/boolean_response.dart';
import '../responses/bungie_friend_list_response_response.dart';
import '../responses/bungie_friend_request_list_response_response.dart';
import '../responses/platform_friend_response_response.dart';
class Social{
    /// Returns your Bungie Friend list
    static Future<BungieFriendListResponseResponse> getFriendList (
        HttpClient client,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final HttpClientConfig config = HttpClientConfig('GET', '/Social/Friends/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return BungieFriendListResponseResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Returns your friend request queue.
    static Future<BungieFriendRequestListResponseResponse> getFriendRequestList (
        HttpClient client,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final HttpClientConfig config = HttpClientConfig('GET', '/Social/Friends/Requests/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return BungieFriendRequestListResponseResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Requests a friend relationship with the target user. Any of the target user's linked membership ids are valid inputs.
    static Future<BooleanResponse> issueFriendRequest (
        HttpClient client,
        String membershipId,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _membershipId = '$membershipId';
        final HttpClientConfig config = HttpClientConfig('POST', '/Social/Friends/Add/$_membershipId/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return BooleanResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Accepts a friend relationship with the target user. The user must be on your incoming friend request list, though no error will occur if they are not.
    static Future<BooleanResponse> acceptFriendRequest (
        HttpClient client,
        String membershipId,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _membershipId = '$membershipId';
        final HttpClientConfig config = HttpClientConfig('POST', '/Social/Friends/Requests/Accept/$_membershipId/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return BooleanResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Declines a friend relationship with the target user. The user must be on your incoming friend request list, though no error will occur if they are not.
    static Future<BooleanResponse> declineFriendRequest (
        HttpClient client,
        String membershipId,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _membershipId = '$membershipId';
        final HttpClientConfig config = HttpClientConfig('POST', '/Social/Friends/Requests/Decline/$_membershipId/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return BooleanResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Remove a friend relationship with the target user. The user must be on your friend list, though no error will occur if they are not.
    static Future<BooleanResponse> removeFriend (
        HttpClient client,
        String membershipId,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _membershipId = '$membershipId';
        final HttpClientConfig config = HttpClientConfig('POST', '/Social/Friends/Remove/$_membershipId/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return BooleanResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Remove a friend relationship with the target user. The user must be on your outgoing request friend list, though no error will occur if they are not.
    static Future<BooleanResponse> removeFriendRequest (
        HttpClient client,
        String membershipId,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _membershipId = '$membershipId';
        final HttpClientConfig config = HttpClientConfig('POST', '/Social/Friends/Requests/Remove/$_membershipId/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return BooleanResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Gets the platform friend of the requested type, with additional information if they have Bungie accounts. Must have a recent login session with said platform.
    static Future<PlatformFriendResponseResponse> getPlatformFriendList (
        HttpClient client,
        PlatformFriendType friendPlatform,
        String page,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _friendPlatform = '${friendPlatform.value}';
        final String _page = '$page';
        final HttpClientConfig config = HttpClientConfig('GET', '/Social/PlatformFriends/$_friendPlatform/$_page/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return PlatformFriendResponseResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
}