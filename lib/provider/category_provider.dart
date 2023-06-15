import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zendvn_online/model/category_model.dart';
import 'package:http/http.dart' as http;

class CategoryProvider extends ChangeNotifier {
  final List<CategoryModel> _categories = [];
  List<CategoryModel> get categories => _categories;
  final List<int> _selectedId = [];
  List<int> get selectedId => _selectedId;

  Future<List<CategoryModel>> loadCategory() async {
    try {
      const String url = 'apiforlearning.zendvn.com';
      const String path = 'api/categories_news';
      final Map<String, dynamic> queryParameters = {
        'offset': '0',
        'limit': '30',
        'sortBy': 'id',
        'order': 'asc',
      };
      final Uri uri = Uri.https(url, path, queryParameters);

      http.Response response = await http.get(uri);
      final List<dynamic> jsonData = jsonDecode(response.body);
      final List<CategoryModel> lst = List<CategoryModel>.from(jsonData.map((data) => CategoryModel.fromMap(data)));

      _categories.clear();
      _categories.addAll(lst);

      await readSelectedId();
      return _categories;
    } catch (e) {
      return Future.error(Exception(e.toString()));
    }
  }

  Future<void> readSelectedId() async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      if (prefs.containsKey('data_app')) {
        final String dataApp = prefs.getString('data_app') ?? '';
        if (dataApp.isNotEmpty) {
          Map<String, dynamic> map = jsonDecode(dataApp);

          _selectedId.clear();
          List<String> lstStr = map['selected'].toString().split('\$');
          _selectedId.addAll(lstStr.map((i) => int.parse(i)).toList());
        }
      } else {
        _selectedId.clear();
      }
    } catch (e) {
      return Future.error(Exception(e.toString()));
    }
  }

  Future<void> writeSelectedId() async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();

      prefs.setString(
        'data_app',
        jsonEncode({
          'selected': _selectedId.join('\$'),
        }),
      );
    } catch (e) {
      return Future.error(Exception(e.toString()));
    }
  }

  void handleSelect(int id) {
    if (_selectedId.contains(id)) {
      _selectedId.remove(id);
    } else {
      _selectedId.add(id);
    }

    writeSelectedId().onError((error, stackTrace) => null);

    notifyListeners();
  }
}
