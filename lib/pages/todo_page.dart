import 'package:flutter/material.dart';

class TodoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          Container(
              child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 24, bottom: 7),
                child: Row(
                  children: [
                    InkWell(
                      // imagem clickavel
                      onTap: () {
                        Navigator.pop(context); //volta para rota anterior
                      },
                      child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Image.asset(
                            "assets/images/back.png",
                            height: 40,
                          )),
                    ),
                    Expanded(
                        child: TextField(
                            decoration: InputDecoration(
                              hintText: "Digite o titulo da task",
                              border: InputBorder.none,
                            ),
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            )))
                  ],
                ),
              ),
              TextField(
                  decoration: InputDecoration(
                      hintText: "Descrição",
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 20,
                      )))
            ],
          )),
          Positioned(
            bottom: 25,
            right: 25,
            child: FloatingActionButton(
              foregroundColor: Colors.black,
              onPressed: () {
                
              },
              child: Icon(Icons.check),
            ),
          )
        ],
      ),
    ));
  }
}
