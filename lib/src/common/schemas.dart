part of groupsmigration_v1_api_client;

/** JSON response template for groups migration API. */
class Groups {

  /** The kind of insert resource this is. */
  core.String kind;

  /** The status of the insert request. */
  core.String responseCode;

  /** Create new Groups from JSON data */
  Groups.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("responseCode")) {
      responseCode = json["responseCode"];
    }
  }

  /** Create JSON Object for Groups */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (responseCode != null) {
      output["responseCode"] = responseCode;
    }

    return output;
  }

  /** Return String representation of Groups */
  core.String toString() => JSON.stringify(this.toJson());

}

