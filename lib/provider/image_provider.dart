import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zendvn_online/model/image_model.dart';

class ImgProvider extends ChangeNotifier {
  final List<ImageModel> _imgs = [];
  int _currentIdx = 0;

  List<ImageModel> get imgs => _imgs;
  int get currentIdx => _currentIdx;
  ImageModel get imgCurrent => imgs[_currentIdx];

  Future<List<ImageModel>> readJson() async {
    try {
      final String response = await rootBundle.loadString('assets/json/category.json');
      final List<dynamic> parsedList = await json.decode(response);
      final List<ImageModel> tmp = List<ImageModel>.from(parsedList.map((data) => ImageModel.fromMap(data)));

      _imgs.clear();
      _imgs.addAll(tmp);
      _currentIdx = 0;

      return _imgs;
    } catch (e) {
      return Future.error(Exception(e.toString()));
    }
  }

  void setCurrentInx(int index) {
    _currentIdx = index;

    notifyListeners();
  }
}
