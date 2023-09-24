import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exercicio3',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ItemListScreen(),
    );
  }
}

class ItemListScreen extends StatelessWidget {
  ItemListScreen({Key? key}) : super(key: key);

  final List<Item> items = [
    Item(
      title: 'Iphone 14',
      imageUrl:
          'https://m.media-amazon.com/images/I/518bzP8VW1L._AC_SX679_.jpg',
      description: 'Iphone 14 de 128gb',
    ),
    Item(
      title: 'Macbook M2',
      imageUrl:
          'https://m.media-amazon.com/images/I/51B-aeCQTCL.__AC_SY445_SX342_QL70_ML2_.jpg',
      description: 'Macbook M2 de 256gb',
    ),
    Item(
      title: 'Mouse Gamer Logitech G403',
      imageUrl:
          'https://m.media-amazon.com/images/I/61CF3xAQtEL.__AC_SX300_SY300_QL70_ML2_.jpg',
      description: 'Mouse Gamer Logitech G403 HERO',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Itens'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Container(
            color: Colors.blue,
            height: 100.0,
            margin: EdgeInsets.all(10.0),
            alignment: AlignmentDirectional.center,
            child: ListTile(
              leading: Image.network(item.imageUrl),
              title: Text(item.title),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ItemDetailScreen(item: item),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class ItemDetailScreen extends StatelessWidget {
  final Item item;

  const ItemDetailScreen({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes do Item'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(item.imageUrl),
            SizedBox(height: 20),
            Text(item.title, style: TextStyle(fontSize: 20)),
            SizedBox(height: 20),
            Text(item.description),
          ],
        ),
      ),
    );
  }
}

class Item {
  final String title;
  final String imageUrl;
  final String description;

  Item(
      {required this.title, required this.imageUrl, required this.description});
}
