import 'package:flutter/material.dart';
import 'verifyAndFinalizeCreated.dart';

ListView allPresentUserAuctionOrRequirementsList(bool alreadyPresentOrRequirements){//true for all present && false for Requirements
    //some API calls to fetch data from mongo DB;    
    List<Map<String,String>>ls=[{"amount":"2345","weight":"372","crop":"paddy"}];
    return ListView.separated(
      itemCount: ls.length,
      itemBuilder: (BuildContext context ,int index){
        return GestureDetector(
          onTap: (){
            if(alreadyPresentOrRequirements==true){//bids created by us(customer/farmer)
              //to verify response got for by bid created by us
              Navigator.push(context,MaterialPageRoute(builder: (context)=>VerifyAndFinalizeCreated()));
            }
            else{//bids matched our requirements;
              //to verify bid we participated;
            }
          },
          child: ListTile(
            leading: Column(children: [
              Text("Amount : ${ls[index]["amount"]}"),
              Text("Weight : ${ls[index]["weight"]}"),
            ]),
            title: Center(child: Text("${ls[index]["crop"]}",style: TextStyle(color: Colors.pink),)),
            titleAlignment: ListTileTitleAlignment.center,
            trailing: Container(height: 30,width: 30,
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHxl8hNV7YGshuZIAN9vM5dNtXMoc_kHjIAw&s"),fit: BoxFit.cover),
                shape: BoxShape.circle
              ),
            )
          
          ),
        );
      },
     separatorBuilder: (context,position){return SizedBox(height: 20);},      
    );
  }


List<String> yeild=["search/select","brinjal","drum stick","pumpkin"];