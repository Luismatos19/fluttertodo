import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

  

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            
          ],
        ),
      ),
      appBar: AppBar(
       
        title: Text('Todo List'),
        
      ),
      body: Center(
        
        child: Column(
         
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Botão apertado:',
            ),
            
          ],
        ),
      ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
