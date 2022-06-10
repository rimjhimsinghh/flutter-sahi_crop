import 'package:flutter/material.dart';
import 'package:sahi_crop/screens/home/Reviews.dart';
import 'package:sahi_crop/screens/home/addcrop.dart';
import 'package:sahi_crop/screens/home/order_received.dart';

// drawer property of scaffold , simply add drawer like appbar
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffff3e6),//0xff76FF03
      appBar: AppBar(
        title: Text("WELCOME"),
        backgroundColor: Colors.deepOrange,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text(""),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.deepOrange, Colors.orangeAccent])),
            ), // drawer header provided by flutter itself
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              subtitle: Text("View yourself"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.notifications_active_rounded),
              title: Text("Notification"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>OrderReceived(),))
              ;},
            ),
            ListTile(
              leading: Icon(Icons.confirmation_num),
              title: Text("Track "),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {},
            ),
            ListTile(
              horizontalTitleGap: 20,
              leading: Icon(Icons.logout),
              title: Text("LOGOUT"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    //padding: EdgeInsets.all(30),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffddffcc)),
                    child: Expanded(
                      child: ListView(

                        children: [
                          Center(child: Text("Produce",style: TextStyle(fontSize: 20),),),
                          DataTable(columns: [
                            DataColumn(label: Text("Name ")),
                            DataColumn(label: Text("ID")),
                            DataColumn(label: Text("Amount")),
                            DataColumn(label: Text("View",)),
                          ], rows: const <DataRow>[
                            DataRow(cells: [
                              DataCell(Text("Product1")),
                              DataCell(Text("KA101A")),
                              DataCell(Text("10 Kgs")),
                              DataCell(Text("Click to View")),



                            ]),
                            DataRow(cells: [
                              DataCell(Text("Product2")),
                              DataCell(Text("KA102B")),
                              DataCell(Text("10 Kgs")),
                              DataCell(Text("Click to View")),
                            ]),
                            DataRow(cells: [
                              DataCell(Text("Product3")),
                              DataCell(Text("KA103C")),
                              DataCell(Text("10 Kgs")),
                              DataCell(Text("Click to View")),
                            ]),
                            DataRow(cells: [
                              DataCell(Text("Product4")),
                              DataCell(Text("KA102A")),
                              DataCell(Text("10 Kgs")),
                              DataCell(Text("Click to View")),
                            ]),
                            DataRow(cells: [
                              DataCell(Text("Product5")),
                              DataCell(Text("KA101C")),
                              DataCell(Text("10 Kgs")),
                              DataCell(Text("Click to View")),
                            ]),
                            DataRow(cells: [
                              DataCell(Text("Product6")),
                              DataCell(Text("KA103A")),
                              DataCell(Text("10 Kgs")),
                              DataCell(Text("Click to View")),
                            ]),
                            DataRow(cells: [
                              DataCell(Text("Product7")),
                              DataCell(Text("KA101D")),
                              DataCell(Text("10 Kgs")),
                              DataCell(Text("View")),
                            ]),
                            DataRow(cells: [
                              DataCell(Text("Product8")),
                              DataCell(Text("KA101B")),
                              DataCell(Text("10 Kgs")),
                              DataCell(Text("View")),
                            ]),
                          ]),
                        ],
                      ),
                    ),
                  ),
                ),
                FlatButton(
                  padding: EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AddCrop()));
                  },
                  child: Text(
                    " +  Add crops ",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  color: Colors.deepOrangeAccent,
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffffddcc)),
                    child: ListView(children: [
                      Text("Recent Notifications",style: TextStyle(color: Colors.teal,fontSize: 15),),
                      Card(
                        child: ListTile(leading: Text("Product1 (KA101A) booked for 2kgs",style: TextStyle(color: Colors.green),),
                        trailing: Text("9:15 AM"),),
                      ),
                      Card(child: ListTile(leading: Text("Product2 (KA102B) booked for 2kgs",style: TextStyle(color: Colors.green)),
                      trailing: Text("9:00 AM"),),),
                      Card(
                        child: ListTile(leading: Text("Product3 (KA103C) stock went empty",style: TextStyle(color: Colors.red),),
                          trailing: Text("8:30 AM"),),
                      ),
                      Card(child: ListTile(leading: Text("Product5 (KA101C) order denied",style: TextStyle(color: Colors.red)),
                      trailing: Text("8:23 AM"),),),
                      Card(
                        child: ListTile(leading: Text("Product6 (KA103A) stock went empty",style: TextStyle(color: Colors.red),),
                          trailing: Text("7:57 AM"),),
                      ),
                      Card(child: ListTile(leading: Text("Product2 (KA102B) booked for 1.5kgs",style: TextStyle(color: Colors.green)),
                      trailing: Text("7:46 AM"),),),
                      Card(
                        child: ListTile(leading: Text("Product1 (KA101A) booked for 5kgs",style: TextStyle(color: Colors.green),),
                          trailing: Text("7:30 AM"),),
                      ),
                      Card(child: ListTile(title: Text("Product2 (KA102B) reviews updated.",style: TextStyle(color: Colors.pinkAccent),) ,
                          subtitle: Text("Click to see"),
                        trailing:Text("7:12 AM") ,
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Reviews()));
                        },),),


                    ],),

                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
