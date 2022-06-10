import 'package:flutter/material.dart';
import 'package:sahi_crop/screens/authenticate/login.dart';
import 'package:sahi_crop/screens/signup.dart';

class GettingStartedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Container(
            child: Column(
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        'Sahi Crops',
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      CircleAvatar(
                          child: Icon(
                            Icons.shopping_cart,
                            size: 100,
                            color: Colors.black,
                          ),
                          radius: 90,
                          backgroundColor: Colors.pinkAccent)
                    ],
                  ),
                ), //for the image and intro
                Expanded(
                  flex: 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        padding: EdgeInsets.all(20),
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          color: Colors.deepOrange,
                          padding: EdgeInsets.all(15),
                          textColor: Colors.white,
                          child: Text(
                            'Getting Started',
                            style: TextStyle(fontSize: 20),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUp()));
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 0,
                  child: Card(
                    child: ListTile(
                      leading: Text(
                        'Have an account?',
                        style: TextStyle(fontSize: 20),
                      ),
                      trailing: FlatButton(
                        shape:
                            StadiumBorder(side: BorderSide(color: Colors.deepOrange)),
                        color: Colors.deepOrange,
                        textColor: Colors.white,
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Login',
                          style: TextStyle(fontSize: 20),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()));
                        },
                      ),
                    ),
                  ),
                ), //for login
                SizedBox(
                  height: 40,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
