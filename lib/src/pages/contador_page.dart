import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _estilo = new TextStyle(fontSize: 30);
  int _cont = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primer App en Flutter'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Numero De Clicks", style: _estilo),
            Text('$_cont', style: _estilo),
          ],
        ),
      ),
      backgroundColor: Colors.grey,
      floatingActionButton: _crearBotones(),
    );
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30.0),
        FloatingActionButton(
          backgroundColor: Colors.black,
          child: Icon(Icons.exposure_zero),
          onPressed: _reset,
        ),
        Expanded(child: SizedBox()),
        FloatingActionButton(
          backgroundColor: Colors.black,
          child: Icon(Icons.remove),
          onPressed: _sustraer,
        ),
        SizedBox(width: 5.0),
        FloatingActionButton(
          backgroundColor: Colors.black,
          child: Icon(Icons.add),
          onPressed: _agregar,
        ),
      ],
    );
  }

  void _agregar() {
    setState(() => _cont++);
  }

  void _sustraer() {
    setState((){
      if(_cont!=0){
        _cont--;
      }
    });
  }

  void _reset() {
    setState(() => _cont=0);
  }
}
