import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'armazenamento_local.dart';

class FavoriteItem {
  final String name;

  FavoriteItem(this.name);
}

class FavoriteListProvider extends ChangeNotifier {
  List<FavoriteItem> _favorites = [];
  static const _favoritesKey = 'favorites';

  List<FavoriteItem> get favorites => _favorites;

  FavoriteListProvider() {
    _loadFavorites();
  }

  Future<void> _loadFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    final favoritesList = prefs.getStringList(_favoritesKey) ?? [];
    _favorites = favoritesList.map((name) => FavoriteItem(name)).toList();
    notifyListeners();
  }

  Future<void> _saveFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    final favoritesList = _favorites.map((item) => item.name).toList();
    prefs.setStringList(_favoritesKey, favoritesList);
  }

  void addToFavorites(String itemName) {
    final newItem = FavoriteItem(itemName);
    _favorites.add(newItem);
    _saveFavorites();
    notifyListeners();
  }

  void removeFromFavorites(String itemName) {
    _favorites.removeWhere((item) => item.name == itemName);
    _saveFavorites();
    notifyListeners();
  }

  void removeAllFavorites() {
    _favorites.clear();
    _saveFavorites();
    notifyListeners();
  }
}
