import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: MaterialApp(
        title: 'Favorite Items App',
        theme: ThemeData.light(), // Definimos o tema claro como padrão
        darkTheme: ThemeData.dark(), // Definimos o tema escuro
        themeMode: Provider.of<ThemeProvider>(context).currentTheme,
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final TextEditingController _itemController = TextEditingController();

  void _addItem(BuildContext context) {
    final newItemName = _itemController.text.trim();
    if (newItemName.isNotEmpty) {
      final favoriteProvider = Provider.of<FavoriteListProvider>(context, listen: false);
      favoriteProvider.addToFavorites(newItemName);
      _itemController.clear();
    }
  }

  void _fadeOutFavorites(BuildContext context) {
    final favoriteProvider = Provider.of<FavoriteListProvider>(context, listen: false);
    favoriteProvider.removeAllFavorites();
  }

  @override
  Widget build(BuildContext context) {
    final favoriteProvider = Provider.of<FavoriteListProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Items'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _itemController,
              decoration: InputDecoration(labelText: 'Item Name'),
              onSubmitted: (_) => _addItem(context),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: favoriteProvider.favorites.length,
              itemBuilder: (ctx, index) {
                final item = favoriteProvider.favorites[index];
                return ListTile(
                  title: Text(item.name),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      favoriteProvider.removeFromFavorites(item.name);
                    },
                  ),
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: () => _fadeOutFavorites(context),
            child: Text('Desaparecer Itens Favoritos'),
          ),
          SizedBox(height: 20.0),
          ThemeToggleButton(),
        ],
      ),
    );
  }
}

class ThemeProvider extends ChangeNotifier {
  ThemeMode _currentTheme = ThemeMode.light;

  ThemeMode get currentTheme => _currentTheme;

  void toggleTheme() {
    _currentTheme = _currentTheme == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class ThemeToggleButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return ElevatedButton(
      onPressed: () {
        themeProvider.toggleTheme();
      },
      child: Text('Alternar Tema'),
    );
  }
}

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
