import 'package:flutter/material.dart';
import 'home_page_body.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Column(
        children: <Widget>[
          new GradientAppBar(),
          HomePageBody(),
      ],),
    );
  }
}
class GradientAppBar extends StatelessWidget {
  final String title;
  final double barHeight = 66.0;
  
  const GradientAppBar({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   final double statusBarheight = MediaQuery
  .of(context)
  .padding
  .top;
    return Container(
      padding:EdgeInsets.only(top: statusBarheight),
      height: statusBarheight + barHeight,
        child: Center(
          child: Text("Spacex",
          style: TextStyle(
          fontSize: 35.0,
          color: Colors.white,
          fontWeight: FontWeight.w300,
          fontFamily: 'popins',
          )
        ),
    ),

   decoration: BoxDecoration(
     gradient: new LinearGradient(colors:[
       const Color(0xFF3366FF),
       const Color(0xFF00CCFF)
     ],
     begin: const FractionalOffset(0.0,0.0),
     end: const FractionalOffset(0.5,0.0),
     stops: [0.0,0.5],
     tileMode: TileMode.clamp
     )
     ));
  }
}