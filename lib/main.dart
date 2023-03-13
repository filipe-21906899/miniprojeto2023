import 'package:flutter/material.dart';
import 'package:miniprojeto/Dashboard.dart';
import 'package:miniprojeto/Listagem.dart';
import 'package:miniprojeto/Registo.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      home: bottomBar(),
    );
  }
}

class bottomBar extends StatefulWidget {
  @override
  _bottomBarState createState() => _bottomBarState();
}

class _bottomBarState extends State<bottomBar> {

  int _currentIndex = 0;
  final List<Widget> _children = [
    Dashboard(),
    Registo(),
    Listagem(),
  ];

  void onTappedBar(int index){
    setState(() {
      _currentIndex= index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        backgroundColor: Colors.indigo,
        onTap: onTappedBar,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.app_registration),
            label: 'Registo',
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.checklist),
            label: 'Listagem',
          ),
        ],
      ),
    );
  }
}
