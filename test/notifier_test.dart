import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:lanai/data/repositories/photos_repository.dart';
import 'package:lanai/domain/models/photo_model.dart';
import 'package:lanai/domain/services/photos_provider.dart';

void main() {
  late PhotoNotifier photosNotifier;
  setUp(() async {
    photosNotifier = PhotoNotifier(PhotosRepository(http.Client()))
      ..debugMockDependency<Photo>(const Photo.loading());
  });

  group(
    "PhotoNotifier",
    () {
      test("Returns Photo loading state", () async {
        expect(photosNotifier.debugState, const Photo.loading());
      });

      test("Updates loading state with Photo", () async {
        final match = Photo.fromJson({
          "id": 2014422,
          "width": 3024,
          "height": 3024,
          "url":
              "https://www.pexels.com/photo/brown-rocks-during-golden-hour-2014422/",
          "photographer": "Joey Farina",
          "photographer_url": "https://www.pexels.com/@joey",
          "photographer_id": 680589,
          "avg_color": "#978E82",
          "src": {
            "original":
                "https://images.pexels.com/photos/2014422/pexels-photo-2014422.jpeg",
            "large2x":
                "https://images.pexels.com/photos/2014422/pexels-photo-2014422.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
            "large":
                "https://images.pexels.com/photos/2014422/pexels-photo-2014422.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
            "medium":
                "https://images.pexels.com/photos/2014422/pexels-photo-2014422.jpeg?auto=compress&cs=tinysrgb&h=350",
            "small":
                "https://images.pexels.com/photos/2014422/pexels-photo-2014422.jpeg?auto=compress&cs=tinysrgb&h=130",
            "portrait":
                "https://images.pexels.com/photos/2014422/pexels-photo-2014422.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
            "landscape":
                "https://images.pexels.com/photos/2014422/pexels-photo-2014422.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
            "tiny":
                "https://images.pexels.com/photos/2014422/pexels-photo-2014422.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"
          },
          "alt": "Brown Rocks During Golden Hour"
        });

        // Initial state will be loading state.
        expect(photosNotifier.debugState, const Photo.loading());

        // Get photo from repository
        await photosNotifier.getPhotoById();

        expect(photosNotifier.debugState, match);
      });

      test("Returns Error 404 state", () async {
        // Initial state will be loading state.
        expect(photosNotifier.debugState, const Photo.loading());

        // Get photo from repository
        await photosNotifier.getPhotoById(id: 201442);

        expect(
          photosNotifier.debugState,
          Photo.error(
            Exception('Error getting photo\nreason: 404').toString(),
          ),
        );
      });
    },
  );
}
