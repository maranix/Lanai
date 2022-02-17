// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:lanai/data/repositories/photos_repository.dart';
import 'package:http/http.dart' as http;
import 'package:lanai/domain/models/photo_model.dart';
import 'package:lanai/domain/services/photos_provider.dart';

void main() {
  group(
    "PhotoNotifier",
    () {
      late PhotoNotifier photosNotifier;
      setUp(() async {
        photosNotifier = PhotoNotifier(PhotosRepository(http.Client()))
          ..debugMockDependency<Photo>(const Photo.loading());
      });

      test("returns Photo loading state", () async {
        expect(photosNotifier.debugState, const Photo.loading());
      });
    },
  );
}
