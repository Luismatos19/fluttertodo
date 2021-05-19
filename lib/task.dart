import 'package:flutter/material.dart';

class Task extends StatelessWidget {
  final String title;
  final String desc;

  Task({this.title, this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 20,
      ),
      margin: EdgeInsets.only(
        bottom: 10,
      ),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(title ?? "Sem Titulo", //
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            )),
        Padding(
          padding: EdgeInsets.only(
            top: 10,
          ),
          child: Text(desc ?? "Sem descrição",
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
                height: 1.5,
              )),
        )
      ]),
    );
  }
}
