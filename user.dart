import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: UserStatefulWidget()
        )
    );
  }
}


class User extends StatelessWidget {
  const User({Key? key, required this.Name, required this.Phone}) : super(key: key);

  final String Name;
  final String Phone;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.lightGreenAccent,
        border: Border.all(),
      ),
      child: Text('Пользователь $Name: тел.: $Phone', style: Theme.of(context).textTheme.headline5,),
      );
  }
}

class SimpleUser extends StatelessWidget {
  const SimpleUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        User(Name: 'Ангелина', Phone: '8-928-555-98-00'),
        User(Name: 'Борис', Phone: '8-928-555-98-01'),
        User(Name: 'Татьяна', Phone: '8-928-555-98-02'),
        User(Name: 'Антон', Phone: '8-928-555-98-03'),
        User(Name: 'Михаил', Phone: '8-928-555-98-04'),
        User(Name: 'Евгения', Phone: '8-928-555-98-05'),
        User(Name: 'Ирина', Phone: '8-928-555-98-06'),
      ],
    );
  }
}

class UserStatefulWidget extends StatefulWidget {
  const UserStatefulWidget({Key? key}) : super(key: key);

  @override
  _UserStatefulWidgetState createState() => _UserStatefulWidgetState();
}

class _UserStatefulWidgetState extends State<UserStatefulWidget> {

  final List<String> entries = <String>['Name', 'Phone'];
  int _selectedIndex =0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(11),
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
              title: Text("Пользователь Name: тел.: Phone"),
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


