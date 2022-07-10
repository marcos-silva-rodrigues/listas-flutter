import 'package:flutter/material.dart';
import 'package:listas/model/item.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {

  List<Item> items = [
    new Item(title: "Task 1"),
    new Item(title: "Task 2"),
    new Item(title: "Task 3"),
    new Item(title: "Task 4"),
    new Item(title: "Task 5"),
    new Item(title: "Task 6"),
  ]
  ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de Compras"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => Divider(color: Colors.blueGrey),
        itemCount: items.length,
        itemBuilder: (context, index) {

          final item = items[index];

          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blueGrey,
              child: IconTheme(
                child: Icon(Icons.done),
                data: IconThemeData(
                  color: Colors.white
                )
              )
            ),
            title: Text(
              item.title,
              style: TextStyle(
                color: Colors.blueGrey
              ),
            ),
          );
        },
      ),
    );
  }
}
