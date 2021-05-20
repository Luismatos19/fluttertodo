import 'package:appflutter/task.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget _button() {
    return Positioned(
      bottom: 25,
      right: 25,
      child: FloatingActionButton(
        foregroundColor: Colors.black,
        onPressed: () {
          Navigator.of(context).pushNamed('/todo');
        },
        child: Icon(Icons.add),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        // cria hamburger menu
        child: Column(
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: Image.asset('assets/images/user.webp'),
                accountName: Text('Luis'),
                accountEmail: Text('luis@gmail.com')),
            ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                subtitle: Text('Home page'),
                onTap: () {}),
            ListTile(
                leading: Icon(Icons.logout),
                title: Text('Sair'),
                subtitle: Text('Finalizar sessão'),
                onTap: () {
                  Navigator.of(context).restorablePushReplacementNamed('/');
                })
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Todo List'),
      ),
      body: Container(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Stack(children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Expanded(
                    child: ListView(
                  children: [
                    Task(
                        title: "New todo",
                        desc:
                            " dfajiodsfj asdf disfnadsfadsfjidosnfijds dsfanidsfjads dafdsfiaofhaidosf adsfjdsjfads"),
                    Task(),
                  ],
                ))
              ]),
              _button(),
            ]),
          )),
    );
  }
}
