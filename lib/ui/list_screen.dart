import 'package:flutter/material.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {

  List<String> items = ["teste"];

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
                items[index],
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
