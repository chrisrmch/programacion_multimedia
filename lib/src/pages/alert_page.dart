import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.blue,
              shape: StadiumBorder()),
          onPressed: () => _mostrarAlert(context),
          child: Text('Mostrar Alerta'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_location),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  void _mostrarAlert(BuildContext context) {
    showDialog(
        context: context,
        //Nos permite cerrar la alerta haciendo click fuera
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            title: Text('Título'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Este es el contenido de la caja de la alerta'),
                FlutterLogo(size: 70)
              ],
            ),
            actions: [
              TextButton(
                child: Text('Cancelar'),
                onPressed: () => Navigator.of(context).pop(),
              ),
              TextButton(
                child: Text('Ok'),
                onPressed: () => Navigator.of(context).pop(),
              )
            ],
          );
        });
  }
}
