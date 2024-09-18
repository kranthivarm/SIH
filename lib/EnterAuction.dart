import 'package:flutter/material.dart';
import 'data.dart';

class EnterAuction extends StatefulWidget {
  const EnterAuction({super.key});

  @override
  State<EnterAuction> createState() => _EnterAuctionState();
}

class _EnterAuctionState extends State<EnterAuction> {
  String dropVal="search/select";
  final wtCtrl= TextEditingController();
  final minAmountCtrl=TextEditingController();
  bool ptr=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("EnterAuction"),
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
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,              
              children: [
                 Container(height: 40,width: 100,
                    child: TextField(
                      controller: wtCtrl,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(                
                        hintText: "weight of goods in KG Ex:3434",
                        border: OutlineInputBorder(),
                      ),              
                    ),
                  ),
                  SizedBox(width: 10,),
                  //min PRICE
                  Container(height: 40,width: 100,
                    child: TextField(
                      controller: minAmountCtrl,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(                
                        hintText: "minimum Cost Ex:3434",
                        border: OutlineInputBorder(),
                      ),              
                    ),
                  ),
            ],),SizedBox(height: 5,),
            GestureDetector(
              onTap: (){
                if(dropVal.isNotEmpty && wtCtrl.text.isNotEmpty && minAmountCtrl.text.isNotEmpty){
                  setState(() {ptr=true; });
                }
                else {setState(() {
                  ptr=false;
                });}
              }, 
              child: Container( height: 30,width: 100,margin: EdgeInsets.fromLTRB(50, 0, 50, 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.lightBlue
                ),
                child: Center(child: Text("BEGIN BID"),),
              )
            ),
            
            SizedBox(height: 50,),
            Center(child: Text((ptr==true)?"Auctions List":"Fill ur Requirements"),),

            //auctions List            
            (ptr==true)?Expanded(child: allPresentUserAuctionOrRequirementsList(false)):Container()
            
          ]
        ),
    );
  }
}