import 'package:flutter/material.dart';
import 'package:lanai/data/repositories/photo_repository.dart';
import 'package:lanai/domain/enums/enums.dart';
import 'package:lanai/domain/models/photo_model.dart';

class PhotoProvider extends ChangeNotifier {
  final _photoRepository = PhotoRepository();

  List<PhotoElement> _curatedPhotos = [];
  List<PhotoElement> _naturePhotos = [];
  List<PhotoElement> _wfhPhotos = [];
  List<PhotoElement> _lightsPhotos = [];
  List<PhotoElement> _texturePhotos = [];
  List<PhotoElement> _rainingPhotos = [];
  List<PhotoElement> _adventurePhotos = [];
  List<PhotoElement> _darkPhotos = [];
  List<PhotoElement> _retroPhotos = [];

  PhotoListViewState _state = PhotoListViewState.initial;

  List<PhotoElement> get curatedPhotos => _curatedPhotos;
  List<PhotoElement> get naturePhotos => _naturePhotos;
  List<PhotoElement> get wfhPhotos => _wfhPhotos;
  List<PhotoElement> get lightsPhotos => _lightsPhotos;
  List<PhotoElement> get texturePhotos => _texturePhotos;
  List<PhotoElement> get rainingPhotos => _rainingPhotos;
  List<PhotoElement> get adventurePhotos => _adventurePhotos;
  List<PhotoElement> get darkPhotos => _darkPhotos;
  List<PhotoElement> get retroPhotos => _retroPhotos;

  PhotoListViewState get state => _state;

  void getPhotos() async {
    _state = PhotoListViewState.loading;
    try {
      await Future.wait(
        [
          _photoRepository.getCuratedPhotos(),
          _photoRepository.getNaturePhotos(),
          _photoRepository.getWFHPhotos(),
          _photoRepository.getLightPhotos(),
          _photoRepository.getTexturePhotos(),
          _photoRepository.getRainingPhotos(),
          _photoRepository.getAdventurePhotos(),
          _photoRepository.getDarkPhotos(),
          _photoRepository.getRetroPhotos(),
        ],
      ).then((value) {
        _curatedPhotos = value[0];
        _naturePhotos = value[1];
        _wfhPhotos = value[2];
        _lightsPhotos = value[3];
        _texturePhotos = value[4];
        _rainingPhotos = value[5];
        _adventurePhotos = value[6];
        _darkPhotos = value[7];
        _retroPhotos = value[8];
        _state = PhotoListViewState.loaded;
        notifyListeners();
      });
      _state = PhotoListViewState.loaded;
    } catch (e) {
      _state = PhotoListViewState.error;
    }
    notifyListeners();
  }
}
