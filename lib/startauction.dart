import 'package:flutter/material.dart';
import 'package:sih/data.dart';
import 'package:sih/verfifystartedauction.dart';

class StartAuction extends StatefulWidget {
  const StartAuction({super.key});

  @override
  State<StartAuction> createState() => _StartAuctionState();
}

class _StartAuctionState extends State<StartAuction> {
  String dropVal="search/select";
  final wtCtrl= TextEditingController();
  final minAmountCtrl=TextEditingController();
  @override  
  Widget build(BuildContext context) {
    double wid = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
            decoration:const BoxDecoration(
              gradient: RadialGradient(
                radius: 2,
                colors: [Colors.blue,Colors.indigo,Colors.black,],
                )
            )
          ),
          title: Text("Starting New AUCTION",style: TextStyle(color: Colors.white),),
        ),      
        body: Column(
          children: [
            //crop reading
            Container(
              child: Row(children: [
                //display selected text
                Container(height: 20,width: 100,child: Text(dropVal),),
                //search
                Container(height:20,width: 30,
                  child: IconButton(
                    onPressed: (){}, 
                    icon:Icon(Icons.mic)
                  ),
                ),
                //drop down Menu
                Container(height: 20,width: 150,
                  child: DropdownButton(
                    value: dropVal,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    onChanged: (String? val){
                      setState(() {
                        dropVal=val!;
                      });
                    },
                    items: yeild.map(
                      (String val) { 
                        return DropdownMenuItem( 
                          value: val, 
                          child: Text(val), 
                        ); 
                      }
                    ).toList(),
                  ),
                )
              ],),
            ),
            SizedBox(height: 10,),
            //weight 
            TextField(
              controller: wtCtrl,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(                
                hintText: "weight of goods in KG Ex:3434",
                border: OutlineInputBorder(),
              ),              
            ),
            SizedBox(height: 10,),
            //min PRICE
            TextField(
              controller: minAmountCtrl,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(                
                hintText: "minimum Cost Ex:3434",
                border: OutlineInputBorder(),
              ),              
            ),
            SizedBox(height: 10,),
            
            GestureDetector(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>VerfifyStartedAuctions()));
                }, 
                child: Container( height: 30,width: 100,margin: EdgeInsets.fromLTRB(50, 0, 50, 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.lightBlue
                  ),
                  child: Center(child: Text("BEGIN BID"),),
                )
              ),
          ]
        ),
    );
  }
}