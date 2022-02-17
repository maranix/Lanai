import 'package:lanai/data/repositories/photos_repository.dart';
import 'package:lanai/domain/models/photo_model.dart';
import 'package:state_notifier/state_notifier.dart';

// TODO: Implement PhotoNotifier to retrieve photos from the api and rename it to better reflect the usage.
/// # PhotoNotifier
/// The following class uses [StateNotifier] to ensure that
/// the dependent widgets are notified whenever the photos are loaded or updated.
class PhotoNotifier extends StateNotifier<Photo> with LocatorMixin {
  PhotoNotifier(this.photosRepository) : super(const Photo.loading());

  final PhotosRepository photosRepository;

  Photo? photo;

  void getPhotoById() async {
    try {
      state = await photosRepository.getPhoto();
    } catch (e) {
      state = Photo.error(e.toString());
    }
  }
}
