import 'package:flutter/material.dart';
import 'package:sahi_crop/screens/home/home.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sign Up'),backgroundColor: Colors.deepOrange,),
      body: SafeArea(child: Center(child: Container(child: Column(children: [
        SizedBox(height: 50,),
        Expanded(
                  child: TextField(
            style: TextStyle(fontSize: 20),
            decoration: InputDecoration(hintText: 'Email Address ',contentPadding: const EdgeInsets.all(20.0)),
          ),
        ),
        SizedBox(height: 20,),
        Expanded(
                  child: TextField(
            style: TextStyle(fontSize: 20),
            decoration: InputDecoration(hintText: 'Username',contentPadding: const EdgeInsets.all(20.0)),
          ),
        ),
        SizedBox(height: 20,),
        Expanded(
                  child: TextField(
                    obscureText: true,
            style: TextStyle(fontSize: 20),
            decoration: InputDecoration(hintText: 'Password',contentPadding: const EdgeInsets.all(20.0)),
          ),
        ),
        SizedBox(height: 20,),
        Expanded(
                  child: TextField(
                    obscureText: true,
            style: TextStyle(fontSize: 20),
            decoration: InputDecoration(hintText: 'Confirm Password',contentPadding: const EdgeInsets.all(20.0)),
          ),
        ),
        SizedBox(height: 50,),
        Container( color: Colors.white, padding: EdgeInsets.all(20),
                                      child: FlatButton(onPressed: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                                      },
          padding: EdgeInsets.all(20),
          color: Colors.deepOrange,
          textColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5), side:BorderSide(width: 10,color: Colors.deepOrange)),
          child: Text('Register',style: TextStyle(fontSize: 20),)),
                  ),
        

      ],),),),),
    );
  }
}
