import 'package:lanai/data/repositories/collections_repository.dart';
import 'package:lanai/domain/models/collections_model.dart';
import 'package:state_notifier/state_notifier.dart';

/// # CollectionsProvider
/// The following class uses [StateNotifier] to ensure that
/// the dependent widgets are notified whenever the Collections are loaded or updated.
class CollectionsNotifier extends StateNotifier<List<Collection>>
    with LocatorMixin {
  CollectionsNotifier(this._collectionsRepository) : super([]);

  final CollectionsRepository _collectionsRepository;

  Future<void> featuredCollection({int? page = 1}) async {
    try {
      state = await _collectionsRepository.getFeaturedCollections(page: page);
    } catch (e) {
      state = [
        ...state,
        Collection.error(e.toString()),
      ];
    }
  }
}

class CollectionsMediaNotifier extends StateNotifier<CollectionMedia>
    with LocatorMixin {
  CollectionsMediaNotifier(this._collectionsRepository)
      : super(const CollectionMedia.loading());

  final CollectionsRepository _collectionsRepository;

  Future<void> collectionMedia(String query, {int? page = 1}) async {
    try {
      state =
          await _collectionsRepository.getCollectionMedia(query, page: page);
    } catch (e) {
      state = CollectionMedia.error(e.toString());
    }
  }
}
