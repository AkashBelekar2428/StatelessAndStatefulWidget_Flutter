import 'package:flutter/material.dart';

void main(){
  runApp(StatelessAndStateful());
}

class StatelessAndStateful extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan
      ),
      home: StatelessAndStatefulScreen(),
    );
  }
}

class StatelessAndStatefulScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateless And Stateful Widget '),
      ),
      body: Text('Hello World!!'),
    );
  }
}