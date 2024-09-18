import 'package:flutter/material.dart';
import 'package:sih/startauction.dart';
import 'package:sih/verfifyStartedAuction.dart';
import 'EnterAuction.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home:home());
  }
}
class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration:const BoxDecoration(
              gradient: RadialGradient(
                radius: 2,
                colors: [Colors.white,Colors.blue,Colors.indigo,Colors.black,],
                )
            )
          ),
          title: Text("AUCTION",style: TextStyle(color: Colors.white),),
        ),
        body: 
        Center(
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onDoubleTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>StartAuction()));
                }, 
                child: Container( height: 30,width: 50,margin: EdgeInsets.fromLTRB(50, 0, 50, 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.lightBlue
                  ),
                  child: Center(child: Text("START"),),
                )
              ),
               GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>EnterAuction()));
                }, 
                child: Container( height: 30,width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.lightBlue
                  ),
                  child: Center(child: Text("Enter"),),
                )
              ),
               GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>VerfifyStartedAuctions()));
                }, 
                child: Container( height: 30,width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.lightBlue
                  ),
                  child: Center(child: Text("Verify already started"),),
                )
              ),
            ],
          ),
        ),      
    );
  }
}