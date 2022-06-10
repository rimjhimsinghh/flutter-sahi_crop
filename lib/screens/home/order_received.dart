import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class OrderReceived extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffebcc),
      appBar: AppBar(title: Text("All about your orders"),
      backgroundColor: Colors.deepOrange,),

      body: ListView(
        children: [
          SizedBox(height: 20,),
          Center(child: Text("Orders Received ",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20),)),
        SizedBox(height: 10,),
        Card(
          child: ListTile(leading: Text("Status"),
          title: Text("Name",style: TextStyle(fontSize: 20),),
          subtitle: Text("Amount",style: TextStyle(fontSize: 15),),
          trailing: Text("Review",style: TextStyle(fontSize: 20),),),
        ),


          Card(
            child: ListTile(leading: Icon(Icons.check_box_outlined),
              title: Text("Siddheshwar Singh"),
              subtitle: Text("Product7 (KA101D)  10kgs"),
              trailing: Text("3.7/5"),),
          ),

          Card(
            child: ListTile(leading: Icon(Icons.check_box_outlined),
              title: Text("Aman Goel"),
              subtitle: Text("Product6 (KA1013A)  0.1kgs"),
              trailing: Text("5/5"),),
          ),
          Card(
            child: ListTile(leading: Icon(Icons.crop_square_sharp),
              title: Text("Aditya Roy"),
              subtitle: Text("Product Unavailable"),
              trailing: Text("Pending "),),
          ),

          Card(
            child: ListTile(leading: Icon(Icons.check_box_outlined),
              title: Text("Kavya Bansal"),
              subtitle: Text("Product2 (KA102B)  3kgs"),
              trailing: Text("4.5/5"),),
          ),
          SizedBox(height: 40,),
          Center(child:Text("This is all for Today! :D",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w300),))



      ],),
    );
  }
}
