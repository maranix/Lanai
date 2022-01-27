import 'package:flutter/material.dart';
import 'package:lanai/data/repositories/photo_repository.dart';
import 'package:lanai/domain/enums/enums.dart';
import 'package:lanai/domain/models/photo_model.dart';

class PhotoProvider extends ChangeNotifier {
  final _photoRepository = PhotoRepository();

  List<PhotoElement> _photos = [];

  PhotoListViewState _state = PhotoListViewState.initial;

  List<PhotoElement> get photos => _photos;

  PhotoListViewState get state => _state;

  void curatedPhoto() async {
    _state = PhotoListViewState.loading;
    try {
      _photos = await _photoRepository.getCuratedPhotos();
      _state = PhotoListViewState.loaded;
    } catch (e) {
      _state = PhotoListViewState.error;
    }
    notifyListeners();
  }
}
