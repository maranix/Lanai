import 'package:lanai/data/repositories/photos_repository.dart';
import 'package:lanai/domain/models/photo_model.dart';
import 'package:state_notifier/state_notifier.dart';

/// # PhotoNotifier
/// The following class uses [StateNotifier] to ensure that
/// the dependent widgets are notified whenever the photos are loaded or updated.
class PhotoNotifier extends StateNotifier<List<Photo>> with LocatorMixin {
  PhotoNotifier(this._photosRepository) : super([]);

  final PhotosRepository _photosRepository;

  Future<void> search(String query, {int? page = 1}) async {
    try {
      final List<Photo> photos =
          await _photosRepository.getPhotoByQuery(query, page: page);
      state = [
        ...state,
        ...photos,
      ];
    } catch (e) {
      state = [
        ...state,
        Photo.error(e.toString()),
      ];
    }
  }

  Future<void> curated({int? page = 1}) async {
    try {
      final List<Photo> photos =
          await _photosRepository.getCuratedPhotos(page: page);
      state = [
        ...state,
        ...photos,
      ];
    } catch (e) {
      state = [
        ...state,
        Photo.error(e.toString()),
      ];
    }
  }

  @override
  bool updateShouldNotify(List<Photo> old, List<Photo> current) {
    /// only update the User content changes, even if using a different instance
    return old.length != current.length;
  }
}
