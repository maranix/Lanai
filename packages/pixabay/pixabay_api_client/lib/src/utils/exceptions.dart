/// An exception thrown when the response body is not a valid json or
/// problem occured while decoding the response body.
class PixabayApiClientMalformedResponse implements Exception {
  const PixabayApiClientMalformedResponse({required this.error});

  final Object error;
}

/// An exception thrown when GET HTTP request fails
class PixabayApiClientRequestFailure implements Exception {
  const PixabayApiClientRequestFailure({required this.statusCode, required this.body});

  /// Status code of received Response.
  final int statusCode;
  /// Response body
  final String body;
}
