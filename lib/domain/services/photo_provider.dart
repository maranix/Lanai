import 'package:flutter/material.dart';
import 'package:lanai/data/constants.dart';
import 'package:lanai/data/repositories/photo_repository.dart';
import 'package:lanai/domain/enums/enums.dart';
import 'package:lanai/domain/models/photo_model.dart';

class PhotoProvider extends ChangeNotifier {
  final _photoRepository = PhotoRepository();

  // ! reserverd for future release
  // List<PhotoElement> _curatedPhotos = [];
  List<PhotoElement> _naturePhotos = [];
  List<PhotoElement> _wfhPhotos = [];
  List<PhotoElement> _lightsPhotos = [];
  List<PhotoElement> _texturePhotos = [];
  List<PhotoElement> _rainingPhotos = [];
  List<PhotoElement> _adventurePhotos = [];
  List<PhotoElement> _darkPhotos = [];
  List<PhotoElement> _retroPhotos = [];
  List<PhotoElement> _queryPhotos = [];

  PhotoListViewState _state = PhotoListViewState.initial;

  // ! reserverd for future release
  // List<PhotoElement> get curatedPhotos => _curatedPhotos;
  List<PhotoElement> get naturePhotos => _naturePhotos;
  List<PhotoElement> get wfhPhotos => _wfhPhotos;
  List<PhotoElement> get lightsPhotos => _lightsPhotos;
  List<PhotoElement> get texturePhotos => _texturePhotos;
  List<PhotoElement> get rainingPhotos => _rainingPhotos;
  List<PhotoElement> get adventurePhotos => _adventurePhotos;
  List<PhotoElement> get darkPhotos => _darkPhotos;
  List<PhotoElement> get retroPhotos => _retroPhotos;
  List<PhotoElement> get queryPhotos => _queryPhotos;

  PhotoListViewState get state => _state;

  void getPhotos() async {
    _state = PhotoListViewState.loading;
    try {
      await Future.wait(
        queryKeywords.map((e) => _photoRepository.getPhotos(e)),
      ).then((List response) {
        // !reserverd for future release
        // _curatedPhotos = response[0];
        _naturePhotos = response[0];
        _wfhPhotos = response[1];
        _lightsPhotos = response[2];
        _texturePhotos = response[3];
        _rainingPhotos = response[4];
        _adventurePhotos = response[5];
        _darkPhotos = response[6];
        _retroPhotos = response[7];
      });
      _state = PhotoListViewState.loaded;
    } catch (e) {
      _state = PhotoListViewState.error;
    }
    notifyListeners();
  }

  void getPhotosByQuery(String query) async {
    _state = PhotoListViewState.loading;
    try {
      _queryPhotos = await _photoRepository.getPhotos(query);
      _state = PhotoListViewState.loaded;
    } catch (e) {
      _state = PhotoListViewState.error;
    }
    notifyListeners();
  }
}
