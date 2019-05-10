import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            primarySwatch: Colors.blue, accentColor: Colors.blueAccent),
        home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void positivo() {
    setState(() {
      _counter++;
    });
    print("Usuario si fumo");
  }

  void negativo() {
    print("Usuario no fumo");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: FlutterLogo(),
          title: Text('Vicios'),
        ),
        body: Container(
            color: Colors.white,
            child: Column(children: [
              Column(children: [
                Image.asset('assets/cigarette.png'),
                Text(
                  '¿Ha consumido tabaco en las últimas 24 horas?',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.clip,
                  textScaleFactor: 2.5,
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Column(children: [
                  new IconButton(
                    color: Colors.green,
                    icon: new Icon(Icons.check),
                    splashColor: Colors.white12,
                    highlightColor: Colors.white,
                    alignment: Alignment.centerLeft,
                    tooltip:
                        'Si presiona este boton se registrará que usted SI consumió tabaco\n                                                  el día de hoy',
                    onPressed: positivo,
                    iconSize: 130,
                  ),
                  Text(
                    'Si',
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.clip,
                    textScaleFactor: 2,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ]),
                Column(children: [
                  new IconButton(
                    icon: new Icon(Icons.close),
                    color: Colors.red,
                    splashColor: Colors.white12,
                    tooltip:
                        'Si presiona este boton se registrará que usted NO consumió tabaco\n                                                  el día de hoy',
                    highlightColor: Colors.white,
                    onPressed: negativo,
                    alignment: Alignment.centerRight,
                    iconSize: 130,
                  ),
                  Text(
                    'No',
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.clip,
                    textScaleFactor: 2,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ]),
              ]),
              Row(children: [
                Column(children: [
                  Text(
                    'Has fumado esta cantidad de cigarros: ',
                  ),
                  Text(
                    '$_counter',
                    style: Theme.of(context).textTheme.display1,
                  )
                ])
              ]),
            ])
        )
    );
  }
}
