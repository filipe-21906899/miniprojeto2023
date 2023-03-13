import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Listagem extends StatelessWidget {
  Listagem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar( backgroundColor: Colors.indigo,
        title: new Text("Listagem", style: TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(4.0),
        child:ListView(
          children: [
            const SizedBox(height: 10.0,),
            ListTile(
              shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1.0,color: Colors.indigo)),
              title: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Computação Móvel",
                    style:  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                  Text("Frequência",
                    style:  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                  Text("2021/02/13 19:58",
                    style:  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                  Text("3",
                    style:  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                  Text("Vai correr bem", style:  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            const SizedBox(height: 10.0,),
            ListTile(
              shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1.0,color: Colors.indigo)),
              title: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Sistemas Digitais",
                    style:  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                  Text("Defesa",
                    style:  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                  Text("2021/01/21 12:58",
                    style:  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                  Text("1",
                    style:  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                  Text("Que seja como deus quiser", style:  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

