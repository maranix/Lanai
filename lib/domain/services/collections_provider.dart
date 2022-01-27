import 'package:flutter/cupertino.dart';
import 'package:lanai/data/repositories/collections_repository.dart';
import 'package:lanai/domain/enums/enums.dart';
import 'package:lanai/domain/models/collections_model.dart';

class CollectionsProvider extends ChangeNotifier {
  final _collectionsRepository = CollectionsRepository();

  CollectionListViewState _state = CollectionListViewState.initial;

  List<Collection> _collections = [];

  List<Collection> get collections => _collections;

  CollectionListViewState get state => _state;

  void getCollectionsList() async {
    _state = CollectionListViewState.loading;
    _collections = await _collectionsRepository.getCollections();

    if (_collections.isNotEmpty) {
      _state = CollectionListViewState.loaded;
    } else {
      _state = CollectionListViewState.error;
    }

    notifyListeners();
  }
}
