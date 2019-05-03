import 'package:flutter/material.dart';



void main() => runApp(Myapp());


var actualA = new DateTime.now();
var actual = actualA.day;





class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme:
        ThemeData(primarySwatch: Colors.blue, accentColor: Colors.blueAccent),
        home: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              leading: FlutterLogo(),
              title: Text('Vicios'),
            ),
            body: Container(
              color: Colors.white,
              child: Column(
                  children: [
                    Column (
                        children: [
                          Image.asset('assets/cigarette.png'),
                          Text(
                            '¿Ha consumido tabaco en las últimas 24 horas $actual?',
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.clip,
                            textScaleFactor: 2.5,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )]),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                              children:[
                                new IconButton(
                                  color: Colors.green,
                                  icon: new Icon(Icons.check),
                                  splashColor: Colors.white12,
                                  highlightColor: Colors.white,
                                  alignment: Alignment.centerLeft,
                                  tooltip: 'Si presiona este boton se registrará que usted SI consumió tabaco\n                                                  el día de hoy',
                                  onPressed: positivo,
                                  iconSize: 130,
                                ),
                                Text(
                                  'Si',
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.clip,
                                  textScaleFactor: 2,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )]),
                          Column(
                              children: [
                                new IconButton(
                                  icon: new Icon(Icons.close),
                                  color: Colors.red,
                                  splashColor: Colors.white12,
                                  tooltip: 'Si presiona este boton se registrará que usted NO consumió tabaco\n                                                  el día de hoy',
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
                  ]),
            )
        )

    );
  }

  void positivo() {
    print("Usuario si fumo");
  }

  void negativo() {
    print("Usuario no fumo");
  }

}
