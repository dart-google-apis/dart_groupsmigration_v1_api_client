part of groupsmigration_v1_api_client;

class ArchiveResource extends Resource {

  ArchiveResource(Client client) : super(client) {
  }

  /**
   * Inserts a new mail into the archive of the Google group.
   *
   * [groupId] - The group ID
   *
   * [content] - Base64 Data of the file content to be uploaded
   *
   * [contentType] - MimeType of the file to be uploaded
   *
   * [optParams] - Additional query parameters
   */
  Future<Groups> insert(String groupId, {String content, String contentType, Map optParams}) {
    var completer = new Completer();
    var url = "{groupId}/archive";
    var uploadUrl = "/upload/groups/v1/groups/{groupId}/archive";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (groupId == null) paramErrors.add("groupId is required");
    if (groupId != null) urlParams["groupId"] = groupId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    if (?content && content != null) {
      response = _client.upload(uploadUrl, "POST", null, content, contentType, urlParams: urlParams, queryParams: queryParams);
    } else {
      response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    }
    response
      .then((data) => completer.complete(new Groups.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

