
import 'package:flutter/material.dart';
class Dashboard extends StatefulWidget {

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar( backgroundColor: Colors.indigo,
        title: new Text("Dashboard", style: TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: new Center(
        child: new  Text("iQueChumbei",
        style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),),
      ),
    );
  }
}
