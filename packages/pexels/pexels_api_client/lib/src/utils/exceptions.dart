/// An exception thrown when the response body is not a valid json or
/// problem occured while decoding the response body.
class PexelsApiClientMalformedResponse implements Exception {
  const PexelsApiClientMalformedResponse({required this.error});

  final Object error;
}

/// An exception thrown when GET HTTP request fails
class PexelsApiClientRequestFailure implements Exception {
  const PexelsApiClientRequestFailure(
      {required this.statusCode, required this.body});

  /// Status code of received Response.
  final int statusCode;

  /// Response body
  final String body;
}
