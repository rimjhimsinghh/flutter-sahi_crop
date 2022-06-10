import 'package:flutter/material.dart';
import 'package:sahi_crop/screens/home/home.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('LOGIN'),
          backgroundColor: Colors.deepOrange,
        ),
        body: SafeArea(
          child: Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: TextField(
                      style: TextStyle(fontSize: 17),
                      decoration: InputDecoration(hintText: 'Username',contentPadding: const EdgeInsets.all(20.0)),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(

                    obscureText: true,
                    style: TextStyle(fontSize: 17),
                    decoration: InputDecoration(hintText: 'Password',contentPadding: const EdgeInsets.all(20.0)),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  FlatButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Home()));
                      },
                      padding: EdgeInsets.all(20),
                      color: Colors.deepOrange,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          side: BorderSide(width: 12, color: Colors.deepOrange)),
                      child: Text(
                        '   Login   ',
                        style: TextStyle(fontSize: 20),
                      ))
                ],
              ),
            ),
          ),
        ));
  }
}
