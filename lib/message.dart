import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:menu/variable.dart';

class message extends StatefulWidget {
  const message({Key? key}) : super(key: key);

  @override
  _messageState createState() => _messageState();
}

class _messageState extends State<message> {
  String m = '';
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
            listMessage(),
            TextField(
              decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Ton message!'
              ),
            onChanged: (String message) {
              setState(() {
                m = message;
              });
            },
            ),
            FlatButton(onPressed: (){
              messagerie(m);
            }, child: Text("Valider!"))
          ],
        ),
      ),
    );
  }
  Widget messagerie(String message){
    return Container(
      color: Colors.greenAccent,
      child: Text(message),
    );
  }

  Widget listMessage(){
    return ListView.builder(
      itemCount: maListe.length,
      shrinkWrap: true,
      padding: EdgeInsets.only(top: 10,bottom: 10),
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index){
        return Container(
          padding: EdgeInsets.only(left: 16,right: 16,top: 10,bottom: 10),
          child: Text(maListe[index]),
        );
      },
    );
  }
}
