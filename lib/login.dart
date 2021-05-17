import 'package:flutter/material.dart';



class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String email = "";
  String password = "";

  Widget _body() {
    return SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    child: Image.asset('assets/images/logo.png')
                  ),
                
                  Container( height:20),
                  TextField(
                    onChanged: (text) {
                      email = text;
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        labelText: 'Email', border: OutlineInputBorder()),
                  ),
                  SizedBox(height: 15),
                  TextField(
                    onChanged: (text) {
                      email = text;
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: 'PassWord', border: OutlineInputBorder()),
                  ),
                  SizedBox(height: 15),
                    ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed('/home');
                    },
                    child: Text('Entrar'),
                  )
                ],
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {

    

    return Scaffold(
        body: Stack(  // empiplha todos o widgets
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child:
                Image.asset('assets/images/background.jpg',
                fit: BoxFit.cover
              ),
            ),
            _body(),
          ]
        )
        );
  }
}
