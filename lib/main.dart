import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

void main()
{
  runApp(
    MaterialApp(
      title: 'Velocity_X',
      home: HomePage(),
    )
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body:ListView(children: [
        VelocityXText(),
        VelocityXBox(),
        VelocityXAnimBox(),
        VelocityXCard(),
        VelocityXsizeb()
      ],)
    );
  }
}

class VelocityXText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:"VelocityX Text".text.blue500.bold.xl4.makeCentered().box.square(100.0).width(100.0).alignCenter.white.p8.roundedSM.make()
    );
  }
}

class VelocityXBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VxBox().square(200).margin(EdgeInsets.all(30.0)).roundedLg.linearGradient([
      Vx.green500,Vx.teal600      
    ]).shadow2xl.neumorphic(curve:VxCurve.flat,elevation: 15.0,color: Colors.purple).make().centered();
  }
}

class VelocityXAnimBox extends StatefulWidget {
  @override
  _VelocityXAnimBoxState createState() => _VelocityXAnimBoxState();
}

class _VelocityXAnimBoxState extends State<VelocityXAnimBox> {
  bool b=false;

  @override
  Widget build(BuildContext context) {
    return VxAnimatedBox().square(200).yellow500.roundedSM.make().centered();
  }
}

class VelocityXCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return "VelocityX card".text.white.make().p16().card.roundedSM.elevation(5.0).green700.makeCentered().wh(300, 200).centered();
  }
}

class VelocityXsizeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return "VelocityX SizedBox".text.center.make().box.orange700.make().centered().wHalf(context).hOneForth(context);
  }
}