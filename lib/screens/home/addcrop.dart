import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sahi_crop/screens/home/home.dart';
class AddCrop extends StatefulWidget {
  @override
  _AddCropState createState() => _AddCropState();
}

class _AddCropState extends State<AddCrop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sahi Crops"),
      backgroundColor: Colors.deepOrange,),
      backgroundColor: Color(0xffffebcc),
      body: SafeArea(child: Center(child: Container( color: Color(0xffe6ffe6),
        padding: EdgeInsets.fromLTRB(20, 20, 30, 5),
        margin: EdgeInsets.fromLTRB(20, 10, 30, 10),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
      Center(child: Text("Add New Produce",style: TextStyle(fontSize: 20),)),
        SizedBox(height: 20,),
        Text("Name",style: TextStyle(fontSize: 17),),
        TextField(
          style: TextStyle(fontSize: 15),
          decoration: InputDecoration(hintText: "Ex: Mangoes",contentPadding:EdgeInsets.all(10)),
        ),

        SizedBox(height: 20,),
        Text("Breed",style: TextStyle(fontSize: 17),),
        TextField(
          style: TextStyle(fontSize: 15),
          decoration: InputDecoration(hintText: "Ex: Alphonso Mangoes",contentPadding:EdgeInsets.all(10)),
        ),

        SizedBox(height: 20,),
        Text("Amount",style: TextStyle(fontSize: 17),),
        TextField(
          style: TextStyle(fontSize: 15),
          decoration: InputDecoration(hintText: "Ex: 30 kgs",contentPadding:EdgeInsets.all(10)),
        ),

        SizedBox(height: 12,),
          Center(child: Text("Mandi Price",style: TextStyle(fontSize: 18),)),
        Text("Price Range",style: TextStyle(fontSize: 17),),
        TextField(
          style: TextStyle(fontSize: 15),
          decoration: InputDecoration(hintText: "Enter your price per kg",contentPadding:EdgeInsets.all(10)),
        ),
          SizedBox(height: 12,),
          FlatButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
          },
              padding: EdgeInsets.fromLTRB(40, 15, 40, 15),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              color: Colors.deepOrange,
              textColor: Colors.white,
              child: Text("    OK      ",style: TextStyle(fontSize: 20),))


        ],),),),),
    );
  }
}