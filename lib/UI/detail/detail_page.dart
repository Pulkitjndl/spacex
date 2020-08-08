import 'package:flutter/material.dart';
import 'package:sampleproject/UI/style/style.dart';
import 'package:sampleproject/common/planet_summary.dart';
import 'package:sampleproject/common/separator.dart';
import 'package:sampleproject/model/planets.dart';

class DetailPage extends StatelessWidget {
  
  final Planet planet;

  DetailPage(this.planet);
  @override
   Widget build(BuildContext context) {
    return  Scaffold(
      body:  Container(
        constraints:  BoxConstraints.expand(),
        color:  Color(0xFF736AB7),
        child:  Stack (
          children: <Widget>[
            _getBackground(),
            _getGradient(),
            _getContent(),
            _getToolbar(context),
          ],
        ),
      ),
    );
  }
  Container _getBackground () {
    return new Container(
            child: new Image.network(planet.picture,
              fit: BoxFit.cover,
              height: 300.0,
            ),
            constraints: new BoxConstraints.expand(height: 295.0),
          );
  }
  Container _getGradient(){
    return Container(
    margin: EdgeInsets.only(top:190.0),
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors:<Color>[
          Color(0x00736AB7),
          Color(0xFF73AB7),
        ],
        stops: [0.0,0.9],
        begin: FractionalOffset(0.0, 0.0),
        end: FractionalOffset(0.0, 1.0)
    ),
    ),
    );
  }
  
   Container _getContent() {
    final _overviewTitle = "Overview".toUpperCase();
    return new Container(
            child: new ListView(
              padding: new EdgeInsets.fromLTRB(0.0, 72.0, 0.0, 32.0),
              children: <Widget>[
                new PlanetSummary(planet,
                  horizontal: false,
                ),
                new Container(
                  padding: new EdgeInsets.symmetric(horizontal: 32.0),
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Text(_overviewTitle,
                        style: Style.headerTextStyle,),
                          Separator(),
                      new Text(
                          planet.description, style: Style.commonTextStyle),
                    ],
                  ),
                ),
              ],
            ),
          );
  }

  Container _getToolbar(BuildContext context) {
    return new Container(
            margin: new EdgeInsets.only(
                top: MediaQuery
                    .of(context)
                    .padding
                    .top),
            child: new BackButton(color: Colors.white),
          );
  }}