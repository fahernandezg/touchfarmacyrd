import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'pages/orders.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Touch Farmacy RD',

      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/orders': (context) => orders(),
        '/estatusorders': (context) => Estatusorders(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        //'/second': (context) => SecondScreen(),
      },

      home: appFarmacy(),
    );
  }
}

class appFarmacy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Touch Farmacy RD'),
          backgroundColor: Colors.teal,
        ),
        body: Container(
            child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              Row(children: <Widget>[
                FadeInImage(
                    alignment: Alignment.topCenter,
                    width: 410.0,
                    height: 550.0,
                    //fadeInDuration: Duration(milliseconds: 300),
                    //placeholder: AssetImage('assets/loading_farmacy.gif'),
                    placeholder: AssetImage('img/Farmacia_Picture.png'),
                    image: NetworkImage('img/Farmacia_Picture.png')),

                //image: NetworkImage(
                        //'https://panatta.es/wp-content/uploads/2017/02/fachada-de-farmacia-1.jpg')),
              ]),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new RaisedButton(
                        color: Colors.teal,
                        textColor: Colors.white,
                        child: Text(
                          "ORDENAR",
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, "/orders");
                        }),
                    new RaisedButton(
                        color: Colors.orangeAccent,
                        textColor: Colors.white,
                        child: Text(
                          "ESTATUS ORDEN",
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, "/estatusorders");
                        })
                  ]),
            ])

            ));
  }
}

class orders extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: new Text("ORDENAR"),
        backgroundColor: Colors.teal,),
      body: Container(
        child: SettingsWidget(),
      ),
    );
  }
}

class Estatusorders extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: new Text("ESTATUS DE LA ORDEN"),
        backgroundColor: Colors.orangeAccent,),
      body: Container(
        child: Text(
          "LA ORDEN #3599 YA HA SIDO ENVIADA. Tiempo Aproximado 15Min",
          style: TextStyle(
            fontSize: 30.0,
          ),
        ),
      ),
    );
  }
}




