// ignore_for_file: prefer_const_constructors
import 'package:pixabay_api_client/pixabay_api_client.dart';
import 'package:test/test.dart';

void main() {
  group('PixabayApiClient', () {
    test('can be instantiated', () {
      expect(PixabayApiClient(), isNotNull);
    });
  });
}
