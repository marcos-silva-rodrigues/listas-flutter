import 'package:flutter/material.dart';
import 'package:listas/model/item.dart';
import 'package:listas/ui/add_item.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {

  List<Item> items = [];

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
                child: Icon(
                  item.isDone ? Icons.done_all : Icons.done
                ),
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
            onTap: () {
              setState(() {
                items[index].isDone = !item.isDone;
              });
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueGrey,
        child:  Icon(Icons.add),
        onPressed: _addItem,
      ),
    );
  }

  void _addItem() async {
    final item = await showDialog<Item>(
        context: context,
        builder: (BuildContext context) {
          return new AddItem();
        }
    );

    setState(() {
      items.add(item!);
    });
  }

}
