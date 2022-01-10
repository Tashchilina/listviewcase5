import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: ListViewCase()
        )
    );
  }
}


class ListViewCase extends StatefulWidget {
const ListViewCase({Key? key}) : super(key: key);

@override
_ListViewCaseState createState() => _ListViewCaseState();
}

class _ListViewCaseState extends State<ListViewCase> {
  int _selectedIndex =0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('Уровень $index'),
            selected: index==_selectedIndex,
            onTap: (){
              setState(() {
                _selectedIndex=index;
              });
            },
          );
        }
    );
  }
}
