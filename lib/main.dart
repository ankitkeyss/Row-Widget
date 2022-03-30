import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHome(),
    );

  }
}
class MyHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text('Row Widgets',style: TextStyle(fontSize: 35),),
       ),
       body: Container(
           decoration: BoxDecoration(
             border: Border.all(
                 width: 2),
           ),
         height: 100,
         child: Row(
          // mainAxisAlignment: MainAxisAlignment.center,
           mainAxisAlignment: MainAxisAlignment.spaceAround,

           //crossAxisAlignment: CrossAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.stretch,
           children: [
             bulidBox(Colors.red),
             bulidBox(Colors.green),
             bulidBox(Colors.amber),
             bulidBox(Colors.black)
           ],
         ),
       ),
     );
  }
}
Widget bulidBox(Color color){
  return Container(
    width: 40,
    height: 40,
    color:color,
  );
}