import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
        backgroundColor: Color(0xFF42A5F5),
      ),
      body: ListView(children: _crearItemsCorta()),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> listaW = []; //Inicializamos la lista
    //Recorremos las opciones, definidas previamente como array de Strings
    for (String opt in opciones) {
      //Almacenamos en un Widget temporal un ListTile con cada elemento
      final tempWidget = ListTile(
        title: Text(opt),
      );
      //Agregamos el ListTile temporal a nuestra lista final de Widgets
      listaW.add(tempWidget);
      listaW.add(Divider());
    }
    return listaW;
  }

  List<Widget> _crearItemsCorta() {
    return opciones.map((item) {
      return Column(
        children: [
        ListTile(
          title: Text('$item!'),
          subtitle: Text('Probando atributos'),
          leading: Icon(Icons.accessible_sharp),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {},
        ),
        Divider()
        ],
      );
    }).toList();
  }
}
