import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:menu/drawer.dart';
import 'package:menu/profil.dart';
import 'package:menu/variable.dart';

import 'message.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: color,
          title: Text(widget.title),
          actions: [
            IconButton(onPressed: () {
              setState(() {
                if (color == Colors.blue) {
                  color = Colors.red;
                }
                else {
                  color = Colors.blue;
                }
              });
            },
                icon: Icon(Icons.circle)),

            IconButton(onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) =>
                      profil()));
            },
                icon: Icon(Icons.settings)),
          ],
        ),
        body: Container(
          height: MediaQuery.of(context).size.height / 2,
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(onPressed: () async {
                  FilePickerResult? result = await FilePicker.platform.pickFiles();
                  if (result != null) {
                    var file = result.paths[0];
                    setState(() {
                      if(file != null) {
                       nomImage = file;
                      }
                    });
                  }
                },
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(nomImage)
                        )
                    ),
                  ),
                ),
                Text("$prenom $nom"),
                FlatButton(onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) =>
                  message()));
                }, child: Text('Chat!'))
              ],
            ),
          ),
        ),
        drawer: drawer() // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}