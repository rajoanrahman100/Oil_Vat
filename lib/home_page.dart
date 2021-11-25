import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:oil_vat/components.dart';

import 'home_page_items.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 1.0,
        backgroundColor: Colors.white,
        leading: Center(child: FaIcon(FontAwesomeIcons.bars,color: Colors.black,)),
        actions: [
          Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.black,width: 2)
            ),
            child: Center(
              child: FaIcon(FontAwesomeIcons.user,color: Colors.black,),
            ),

          ),
          SizedBox(width: 10.0,)
        ],
      ),
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: size.height*0.08,),
            HomePageItems(size: size,boxDecorationColor: kOrange,title: "91",ovalBorderColor: kOrange,),
            SizedBox(height: size.height*0.08,),
            HomePageItems(size: size,boxDecorationColor: kGreen700,title: "95",ovalBorderColor: kGreen700,),
            SizedBox(height: size.height*0.08,),
            HomePageItems(size: size,boxDecorationColor: kBlue700,title: "Diesel",ovalBorderColor: kBlue700,),

          ],
        ),
      ),
    );
  }
}

