import 'package:flutter/material.dart';

void main() => runApp(OrderHistoryWidget());

class OrderHistoryWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: "Historial de reservas",
        theme: new ThemeData(
            primarySwatch: Colors.red
        ),
        debugShowCheckedModeBanner: false,
        home: new ListViewBuilder()
    );
  }
}
class ListViewBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:Text("Historial de reservas")
      ),
      body: ListView.builder(
          itemCount: 8,
          itemBuilder: (BuildContext context, int index){
            return ListTile(
                leading: Icon(Icons.fastfood),
                trailing: Text("Precio: 15.00",
                  style: TextStyle(
                      color: Colors.green,fontSize: 15),),
                title:Text("Orden $index")
            );
          }
      ),
    );
  }
}
