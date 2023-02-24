import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:pexels_api_client/src/utils/exceptions.dart';

/// An extension method for converting response body to Map or a List.
///
/// Throws a PexelsApiClientMalformedResponse if the received body
/// is not a valid json.
extension ResponseConvertor on http.Response {
  Map<String, dynamic> toJsonMap() {
    try {
      return jsonDecode(body) as Map<String, dynamic>;
    } catch (e) {
      throw PexelsApiClientMalformedResponse(error: e);
    }
  }

  List<dynamic> toJsonList() {
    try {
      return jsonDecode(body) as List<dynamic>;
    } catch (e) {
      throw PexelsApiClientMalformedResponse(error: e);
    }
  }
}
