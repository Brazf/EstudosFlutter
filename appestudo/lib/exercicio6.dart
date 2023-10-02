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

  @override
  Widget build(BuildContext context) {
    final favoriteProvider = Provider.of<FavoriteListProvider>(context);

    void _addItem() {
      final newItemName = _itemController.text.trim();
      if (newItemName.isNotEmpty) {
        favoriteProvider.addToFavorites(newItemName);
        _itemController.clear();
      }
    }

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
              onSubmitted: (_) => _addItem(),
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
        ],
      ),
    );
  }
}
