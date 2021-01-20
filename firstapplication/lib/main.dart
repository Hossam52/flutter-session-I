import 'package:flutter/material.dart';

main() => runApp(Flutter());

class Flutter extends StatelessWidget {
  final TextEditingController txtController =  TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Flutter',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.purple,
        ),
        body: Container(
          color:Colors.grey,
          alignment: Alignment.center,
          padding: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              TextField(
                controller: txtController,

              ),
              RaisedButton(
                onPressed: () => print(txtController.text),
                child: Text('Show Data'),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          icon: Icon(Icons.access_alarm),
          label: Text('Samy'),
          onPressed: () => print('Floating Action Button'),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      ),
    );
  }
}
