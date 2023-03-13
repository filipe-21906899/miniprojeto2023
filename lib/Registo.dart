import 'dart:convert';
import 'dart:io';
import 'package:intl/intl.dart';
import 'package:miniprojeto/Listagem.dart';
import 'package:miniprojeto/widgets/my_button.dart';
import 'package:miniprojeto/widgets/my_text_field.dart';
import 'package:flutter/material.dart';
import 'package:miniprojeto/widgets/my_text_field2.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:path_provider/path_provider.dart';

import 'FormData.dart';
import 'lista.dart';

class Registo extends StatefulWidget {

  @override
  _RegistoState createState() => _RegistoState();
}

class _RegistoState extends State<Registo> {

  late SharedPreferences sharedPreferences;

  DateTime date = DateTime.now();
  final format = DateFormat('yyyy/MM/dd HH:mm');

  final _observacoesController = TextEditingController();
  final _disciplinaController = TextEditingController();
  final _nivel = ["1","2","3","4","5"];
  final _avaliacao = ["Frequência","Mini-Teste","Projeto","Defesa"];
  String? _selectedVal = "";
  String? _selectedVal2 = "";

  _RegistoState(){
    _selectedVal = _avaliacao[0];
    _selectedVal2 = _nivel[0];
  }

  @override
  void dispose(){
    _disciplinaController.dispose();
    super.dispose();
  }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar( backgroundColor: Colors.indigo,
        title: new Text("Registo", style: TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: ListView(
          children:[
            Form(
            key: _formKey,
            child: Column(
              children: [
                MyTextField(
                  myController: _disciplinaController,
                  fieldName: "Nome da Disciplina",
                  myIcon: Icons.propane_outlined,
                  prefixIconColor: Colors.indigo,),
                const SizedBox(height: 10.0,),
                DropdownButtonFormField(
                  value: _selectedVal,
                  items: _avaliacao.map(
                          (e) => DropdownMenuItem(child: Text(e), value: e,)
                  ).toList(),
                  onChanged: (val){
                    setState(() {
                      _selectedVal = val as String;
                    });
                  },
                  icon: const Icon(
                    Icons.arrow_drop_down_circle,
                    color: Colors.indigo,
                  ),
                  dropdownColor: Colors.indigo,
                  decoration: InputDecoration(
                      labelText: "Tipo Avaliação",
                      prefixIcon: Icon(
                        Icons.checklist,
                        color: Colors.indigo,
                      )
                  ),
                ),
                const SizedBox(height: 10.0,),
                Text((date == null) ? 'Data' : format.format(date)),
                const SizedBox(height: 10.0,),
                MaterialButton(
                  onPressed: (){
                    showDatePicker(context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1999),
                      lastDate: DateTime(2050),
                    ).then((value){
                      setState(() {
                        date = value!;
                      });
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      "Data",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
                    ),
                  ),
                  color: Colors.indigo,
                ),
                const SizedBox(height: 10.0,),
                DropdownButtonFormField(
                  value: _selectedVal2,
                  items: _nivel.map(
                          (e) => DropdownMenuItem(child: Text(e), value: e,)
                  ).toList(),
                  onChanged: (val){
                    setState(() {
                      _selectedVal2 = val as String;
                    });
                  },
                  icon: const Icon(
                    Icons.arrow_drop_down_circle,
                    color: Colors.indigo,
                  ),
                  dropdownColor: Colors.indigo,
                  decoration: InputDecoration(
                      labelText: "Nivel Dificuldade",
                      prefixIcon: Icon(
                        Icons.checklist,
                        color: Colors.indigo,
                      )
                  ),
                ),
                const SizedBox(height: 10.0,),
                MyTextField2(fieldName: "Observações",
                  myController: _observacoesController,
                  myIcon: Icons.propane_outlined,
                  prefixIconColor: Colors.indigo,),
                const SizedBox(height: 10.0,),
                MyButton(onPress: () async {
                  if(_formKey.currentState!.validate()){

                    Data data = Data();
                    data.disciplina = _disciplinaController.text;
                    data.avaliacao = _selectedVal!;
                    data.date = format.format(date).toString();
                    data.nivel = _selectedVal2!;
                    data.observacao = _observacoesController.text;

                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('A avaliação foi registada com sucesso.')),
                    );

                    _disciplinaController.clear();
                    _observacoesController.clear();
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return lista(data: data);
                    }));
                    print(_disciplinaController.text);
                    print(_selectedVal!);
                    print(_observacoesController.text);
                    print(_selectedVal2!);
                    print(format.format(date));

                  }
                })
              ],
            ))
          ],
        ),
      )
    );
  }
}


