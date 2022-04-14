import 'package:flutter/material.dart';

void main() => runApp(appmaterial());



class appmaterial extends StatelessWidget {
  const appmaterial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: appstate(),
    );
  }
}
class appstate extends StatefulWidget {
  @override
  State<appstate> createState() => _appstateState();
}

class _appstateState extends State<appstate> {
  int counter = 0;

  void add(){
    setState(() {
      counter++ ;
    });
  }
  void remove(){
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("counter app"),
      ),
      body: Center(
          child: Column(mainAxisAlignment:MainAxisAlignment.spaceEvenly,children: [
            FloatingActionButton(child:Icon(Icons.add),onPressed: add),
            Text("$counter"),
            FloatingActionButton(child:Icon(Icons.remove),onPressed: remove),
            Text("try to press")
          ],)
      
      ),
    );
  }
}







