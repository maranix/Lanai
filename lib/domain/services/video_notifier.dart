import 'package:lanai/data/repositories/videos_repository.dart';
import 'package:lanai/domain/models/video_model.dart';
import 'package:state_notifier/state_notifier.dart';

/// # VideosNotifier
/// The following class uses [StateNotifier] to ensure that
/// the dependent widgets are notified whenever the Videos are loaded or updated.
class VideosNotifier extends StateNotifier<List<Video>> with LocatorMixin {
  VideosNotifier(this._videosRepository) : super([]);

  final VideosRepository _videosRepository;

  Future<void> search(String query, {int? page = 1}) async {
    try {
      state = await _videosRepository.getVideoByQuery(query, page: page);
    } catch (e) {
      state = [
        ...state,
        Video.error(e.toString()),
      ];
    }
  }

  Future<void> popular({int? page = 1}) async {
    try {
      state = await _videosRepository.getPopularVideos(page: page);
    } catch (e) {
      state = [
        ...state,
        Video.error(e.toString()),
      ];
    }
  }
}
