// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:lanai/data/constants.dart';
import 'package:lanai/data/repositories/photos_repository.dart';
import 'package:lanai/domain/models/photo_model.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'repository_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  group(
    "Repository",
    () {
      test("getPhoto Returns Photo if the http call completes successfully",
          () async {
        final client = MockClient();

        const response = """
        {
            "id": 2014422,
            "width": 3024,
            "height": 3024,
            "url": "https://www.pexels.com/photo/brown-rocks-during-golden-hour-2014422/",
            "photographer": "Joey Farina",
            "photographer_url": "https://www.pexels.com/@joey",
            "photographer_id": 680589,
            "avg_color": "#978E82",
            "src": {
              "original": "https://images.pexels.com/photos/2014422/pexels-photo-2014422.jpeg",
              "large2x": "https://images.pexels.com/photos/2014422/pexels-photo-2014422.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
              "large": "https://images.pexels.com/photos/2014422/pexels-photo-2014422.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
              "medium": "https://images.pexels.com/photos/2014422/pexels-photo-2014422.jpeg?auto=compress&cs=tinysrgb&h=350",
              "small": "https://images.pexels.com/photos/2014422/pexels-photo-2014422.jpeg?auto=compress&cs=tinysrgb&h=130",
              "portrait": "https://images.pexels.com/photos/2014422/pexels-photo-2014422.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
              "landscape": "https://images.pexels.com/photos/2014422/pexels-photo-2014422.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
              "tiny": "https://images.pexels.com/photos/2014422/pexels-photo-2014422.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"
            },
            "liked": false,
            "alt": "Brown Rocks During Golden Hour"
        }
        """;
        when(client.get(Uri.parse('$apiPREFIX/photos/2014422'), headers: {
          'Authorization': '',
          'Content-Type': 'application/json',
        })).thenAnswer(
          (_) async => http.Response(response, 200),
        );

        expect(await PhotosRepository(client).getPhoto(), isA<Photo>());
      });

      test("Returns an exception if the http call completes with an error",
          () async {
        final client = MockClient();

        when(client.get(Uri.parse('$apiPREFIX/photos/201442'), headers: {
          'Authorization': '',
          'Content-Type': 'application/json',
        })).thenAnswer(
          (_) async => http.Response('Not found', 404),
        );

        expect(PhotosRepository(client).getPhoto(id: 201442), throwsException);
      });
    },
  );
}
