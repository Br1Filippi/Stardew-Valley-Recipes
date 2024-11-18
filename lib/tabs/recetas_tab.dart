import 'package:flutter/material.dart';

class RecetasTab extends StatelessWidget {
  const RecetasTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFFDDA059),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Color(0xFF6B3710), width: 2),
              ),
              child: ListTile(
                leading: Container(
                  color: Colors.green,
                  child: Text('Foto'),
                ),
                title: Container(
                  color: Colors.yellow,
                  child: Text('Nombre de la receta'),
                ),
                subtitle: Container(
                  color: Colors.white,
                  child: Text('Creador de la receta'),
                ),
                trailing: Container(
                  color: Colors.orange,
                  child: Text('Categoria'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
