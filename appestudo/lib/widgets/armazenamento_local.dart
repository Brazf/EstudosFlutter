import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageService {
  static const _keyFavorites = 'favorites';

  Future<List<String>> getFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    final favorites = prefs.getStringList(_keyFavorites) ?? [];
    return favorites;
  }

  Future<void> addFavorite(String itemName) async {
    final prefs = await SharedPreferences.getInstance();
    final favorites = await getFavorites();
    favorites.add(itemName);
    await prefs.setStringList(_keyFavorites, favorites);
  }

  Future<void> removeFavorite(String itemName) async {
    final prefs = await SharedPreferences.getInstance();
    final favorites = await getFavorites();
    favorites.remove(itemName);
    await prefs.setStringList(_keyFavorites, favorites);
  }
}
