import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'FormData.dart';

class lista extends StatelessWidget {
  lista({Key? key, required this.data,}) : super(key: key);

  Data data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar( backgroundColor: Colors.indigo,
        title: new Text("Listagem", style: TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),),
        centerTitle: true,
        leading: IconButton(
          onPressed: ()=> Navigator.pop(context),
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(4.0),
        child: ListView(
          children: [
            ListTile(
              shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1.0,color: Colors.indigo)),
              title: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(data.disciplina,
                  style:  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                  Text(data.avaliacao,
                    style:  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                  Text(data.date,
                    style:  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                  Text(data.nivel,
                    style:  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                  Text(data.observacao, style:  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
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
