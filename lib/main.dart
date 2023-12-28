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

class StatelessAndStatefulScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => stateFul();

}

class stateFul extends State<StatelessAndStatefulScreen>{
  var count = 0;
  @override
  Widget build(BuildContext context) {
   return Column(
     mainAxisAlignment: MainAxisAlignment.center,
     children: [
       Text("Count: $count", style: TextStyle(fontSize: 20),),
       ElevatedButton(onPressed: (){
          setState(() {
            count ++ ;
          });

       }, child: Text('Increment Count'))
     ],

   );
  }
}