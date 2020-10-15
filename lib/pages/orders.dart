import 'package:flutter/material.dart';

class SettingsWidget extends StatefulWidget {
  SettingsWidget({Key key}) : super(key: key);

  @override
  _SettingsWidgetState createState() => new _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget> {
  List _farmacy = ["FARMAX", "Los Hidalgos", "Medicar GBC", "Carol", "Caribe"];

  List<DropdownMenuItem<String>> _dropDownMenuItems;
  String _currentFarmacy;

  List _articulo = [
    "Vitaminas C 1000mg",
    "Acetaminofén 500mg",
    "Aspirina Bayer",
    "Alcohol 70%",
    "Postan 500mg"
  ];

  List<DropdownMenuItem<String>> _dropDownMenuArticulos;
  String _currentArticulo;

  @override
  void initState() {
    _dropDownMenuItems = getDropDownMenuItems();
    _currentFarmacy = _dropDownMenuItems[0].value;

    _dropDownMenuArticulos = getDropDownMenuItems2();
    _currentArticulo = _dropDownMenuArticulos[0].value;

    super.initState();
  }

  List<DropdownMenuItem<String>> getDropDownMenuItems() {
    List<DropdownMenuItem<String>> items = new List();
    for (String farmacy in _farmacy) {
      items.add(new DropdownMenuItem(value: farmacy, child: new Text(farmacy)));
    }

    return items;
  }

  List<DropdownMenuItem<String>> getDropDownMenuItems2() {
    List<DropdownMenuItem<String>> items = new List();
    for (String articulo in _articulo) {
      items.add(
          new DropdownMenuItem(value: articulo, child: new Text(articulo)));
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.white,
      child: new Container(
          child: new Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text("FARMACIA:",
              style: TextStyle(
                fontSize: 20.0,
              )),
          new Container(
            padding: new EdgeInsets.all(05.0),
          ),
          new DropdownButton(
            value: _currentFarmacy,
            items: _dropDownMenuItems,
            onChanged: changedDropDownItem,
          ),
          new Container(
            padding: new EdgeInsets.all(20.0),
          ),
          new Text("ARTICULOS:",
              style: TextStyle(
                fontSize: 20.0,
              )),
          new DropdownButton(
            value: _currentArticulo,
            items: _dropDownMenuArticulos,
            onChanged: changedDropDownItem2,
          ),
          new Container(
            padding: new EdgeInsets.all(20.0),
          ),
          new Text(
              "CANTIDAD:",
              style: TextStyle(
              fontSize: 20.0,)),
          new TextField(),
          new Container(
            padding: new EdgeInsets.all(20.0),
          ),
          new RaisedButton(
            color: Colors.teal,
            textColor: Colors.white,
            child: Text("Enviar",style: TextStyle(fontSize: 16.0),),
          ),
        ],
      )),
    );
  }

  void changedDropDownItem(String selectedCity) {
    setState(() {
      _currentFarmacy = selectedCity;
    });
  }

  void changedDropDownItem2(String selectedArticulo) {
    setState(() {
      _currentArticulo = selectedArticulo;
    });
  }
}
