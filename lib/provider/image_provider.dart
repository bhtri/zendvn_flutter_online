import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zendvn_online/model/image_model.dart';

class ImgProvider extends ChangeNotifier {
  final List<ImageModel> _imgs = [];
  final List<int> _imgsFavorite = [];
  int _currentIdx = 0;

  List<ImageModel> get imgs => _imgs;
  List<int> get imgsFavorite => _imgsFavorite;

  int get currentIdx => _currentIdx;
  ImageModel get imgCurrent => imgs[_currentIdx];

  Future<List<ImageModel>> readJson() async {
    try {
      final String response = await rootBundle.loadString('assets/json/category.json');
      final List<dynamic> parsedList = await json.decode(response);
      final List<ImageModel> tmp = List<ImageModel>.from(parsedList.map((data) => ImageModel.fromMap(data)));

      _imgs.clear();
      _imgs.addAll(tmp);
      _imgsFavorite.clear();
      _currentIdx = 0;

      await Future.delayed(const Duration(seconds: 1));

      return _imgs;
    } catch (e) {
      return Future.error(Exception(e.toString()));
    }
  }

  Future<List<ImageModel>> getFavoriteList() async {
    try {
      final List<ImageModel> lst = [];

      for (var id in _imgsFavorite) {
        ImageModel? rs = _imgs.where((img) => img.id == id).firstOrNull;
        if (rs != null) {
          lst.add(rs);
        }
      }

      await Future.delayed(const Duration(seconds: 1));

      return lst;
    } catch (e) {
      return Future.error(Exception(e.toString()));
    }
  }

  void setCurrentInx(int index) {
    _currentIdx = index;

    notifyListeners();
  }

  void handleFavorite(int id) {
    bool isExists = false;
    isExists = _imgs.where((img) => img.id == id).isNotEmpty;

    if (isExists) {
      if (!_imgsFavorite.contains(id)) {
        _imgsFavorite.add(id);
      } else {
        _imgsFavorite.remove(id);
      }
    }

    notifyListeners();
  }
}
