import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:menu/main.dart';
import 'package:menu/variable.dart';

class profil extends StatefulWidget {
  const profil({Key? key}) : super(key: key);

  @override
  _profilState createState() => _profilState();
}

class _profilState extends State<profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color,
        title: Text('Paramétres'),
      ),
        body: Container(
          height: MediaQuery.of(context).size.height/2,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Nom'
                ),
                onChanged: (String name){
                  setState(() {
                    nom = name;
                  });
                },
              ),
              TextField(
                decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Prenom'
                ),
                onChanged: (String firstName){
                  setState(() {
                    prenom = firstName;
                  });
                },
              ),
              FlatButton(onPressed: (){
                  Navigator.of(context).pop();
                }, child: Text("Valider!"))
            ],
          ),
        ),
    );
  }
}
