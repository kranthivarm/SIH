import 'package:flutter/material.dart';
import 'data.dart';

class VerfifyStartedAuctions extends StatefulWidget {
  const VerfifyStartedAuctions({super.key});

  @override
  State<VerfifyStartedAuctions> createState() => _VerfifyStartedAuctionsState();
}

class _VerfifyStartedAuctionsState extends State<VerfifyStartedAuctions> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("present Auctions List"),),
      // body: SingleChildScrollView(
        body:allPresentUserAuctionOrRequirementsList(true),
      // ),
    );
  }
}