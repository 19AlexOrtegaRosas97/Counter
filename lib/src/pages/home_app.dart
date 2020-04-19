
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  final estilo = new TextStyle(fontSize: 30);
  final cont = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        centerTitle: true ,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Numero De Clicks",style: estilo),
            Text('$cont',style: estilo),
          ],
        ),
        ),
        backgroundColor: Colors.grey,
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Colors.black26,
          onPressed: (){
            print('HolaMundo');
          }, 
        ),
    );
  }

}