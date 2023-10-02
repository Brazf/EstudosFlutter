import 'package:appestudo/widgets/favorite_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FavoriteListProvider(),
      child: MaterialApp(
        title: 'Favorite Items App',
        theme: ThemeData(
          primarySwatch: Colors.amber,
        ),
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
        ],
      ),
    );
  }
}