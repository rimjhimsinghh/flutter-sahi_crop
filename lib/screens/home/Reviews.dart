import 'package:flutter/material.dart';
class Reviews extends StatefulWidget {
  @override
  _ReviewsState createState() => _ReviewsState();
}

class _ReviewsState extends State<Reviews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffddffcc),
      appBar: AppBar(title: Text("Reviews "),backgroundColor: Colors.deepOrange,),
      body: Container(
        child: Column(children: [
          SizedBox(height: 20,),
          Center(child: Text("Product2",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600),),),
          SizedBox(height: 10,),
          Center(child: Text("KA102B",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),),
          SizedBox(height: 10,),

          Card(child: ListTile(leading: Text("Breed",style:TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
          trailing: Text("XYZ",style: TextStyle(fontSize: 16),),),),

          Card(child: ListTile(leading: Text("Value",style:TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
            trailing: Text("20 INR/kg",style: TextStyle(fontSize: 16,color: Colors.green),),),),

          Card(child: ListTile(leading: Text("Average Review",style:TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
            trailing: Text(" 4.7 / 5 ",style: TextStyle(fontSize: 16,color: Colors.yellow,fontWeight: FontWeight.w900,backgroundColor: Colors.black),),),),

          Card(child: ListTile(leading: Text("In Stock",style:TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
            trailing: Text("10 kg",style: TextStyle(fontSize: 16),),),),

          Card(child: ListTile(leading: Text("SOLD",style:TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
            trailing: Text("2 kg",style: TextStyle(fontSize: 16),),),),

        ],),
      ),
    );
  }
}

/*
ListView(children: [
            Card(child: ListTile(
              leading: Text("Breed",style:TextStyle(fontSize: 16),),
              trailing: Text("XYZ",style: TextStyle(fontSize: 16),),
            ),),
          ],
*/