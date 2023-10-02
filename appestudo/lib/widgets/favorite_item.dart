import 'package:flutter/foundation.dart';

class FavoriteItem {
  final String name;

  FavoriteItem(this.name);
}

class FavoriteListProvider extends ChangeNotifier {
  List<FavoriteItem> _favorites = [];

  List<FavoriteItem> get favorites => _favorites;

  void addToFavorites(String itemName) {
    final newItem = FavoriteItem(itemName);
    _favorites.add(newItem);
    notifyListeners();
  }

  void removeFromFavorites(String itemName) {
    _favorites.removeWhere((item) => item.name == itemName);
    notifyListeners();
  }
  
  void removeAllFavorites() {
    _favorites.clear();
    notifyListeners();
  }
}
