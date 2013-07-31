part of groupsmigration_v1_api;

class ArchiveResource_ {

  final Client _client;

  ArchiveResource_(Client client) :
      _client = client;

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
  async.Future<Groups> insert(core.String groupId, {core.String content, core.String contentType, core.Map optParams}) {
    var url = "{groupId}/archive";
    var uploadUrl = "/upload/groups/v1/groups/{groupId}/archive";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    if (content != null) {
      response = _client.upload(uploadUrl, "POST", null, content, contentType, urlParams: urlParams, queryParams: queryParams);
    } else {
      response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    }
    return response
      .then((data) => new Groups.fromJson(data));
  }
}

