import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

void main() => runApp(FlareActorApp());

class FlareActorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ActorShowOff(),
    );
  }
}

class ActorShowOff extends StatefulWidget {
  @override
  _ActorShowOffState createState() => _ActorShowOffState();
}

class _ActorShowOffState extends State<ActorShowOff> {
  bool _animationName = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SizedBox(
        height: MediaQuery.of(context).size.width /2,
        width: MediaQuery.of(context).size.width /2,
        child: InkWell(
          onTap: () {
            setState(() {
              _animationName = !_animationName;
            });
          },
          child: FlareActor(
            'assets/teddy.flr',
            alignment: Alignment.center,
            fit: BoxFit.contain,
            animation: _animationName?'success':'fail',
          ),
        ),
      ),
    ));
  }
}
