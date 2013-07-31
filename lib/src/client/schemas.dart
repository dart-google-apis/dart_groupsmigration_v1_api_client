part of groupsmigration_v1_api;

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

core.Map _mapMap(core.Map source, [core.Object convert(core.Object source) = null]) {
  assert(source != null);
  var result = new dart_collection.LinkedHashMap();
  source.forEach((core.String key, value) {
    assert(key != null);
    if(convert == null) {
      result[key] = value;
    } else {
      result[key] = convert(value);
    }
  });
  return result;
}
