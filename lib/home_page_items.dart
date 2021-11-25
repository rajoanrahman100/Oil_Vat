import 'package:flutter/material.dart';

class HomePageItems extends StatelessWidget {
  HomePageItems({
    this.size,this.boxDecorationColor,this.title,this.ovalBorderColor,this.callback
  });

  final Size? size;
  final Color? boxDecorationColor;
  final String? title;
  final Color? ovalBorderColor;
  final VoidCallback? callback;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 60),
      child: GestureDetector(
        onTap: callback,
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Container(
              height: size!.height*0.13,
              width: size!.width,
              margin: EdgeInsets.only(left: 70.0),
              decoration: BoxDecoration(
                  color: boxDecorationColor,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(20.0),bottomRight: Radius.circular(20.0))
              ),
              child: Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Text(title!,style: TextStyle(fontSize: 55,fontWeight: FontWeight.bold),),
                ),
              ),
            ),
            ClipOval(
                child: Container(
                  height: size!.height*0.14,
                  width: 120,
                  child: Container(
                    height: 100,width: 100,
                    decoration: BoxDecoration(
                        color: Colors.white,shape: BoxShape.circle,
                        border: Border.all(color: ovalBorderColor!,width: 3.0)
                    ),

                  ),
                ))
          ],
        ),
      ),
    );
  }
}
