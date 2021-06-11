import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:menu/variable.dart';

class drawer extends StatefulWidget {
  const drawer ({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<drawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width/2,
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height/2,
            width: MediaQuery.of(context).size.width,
            child:Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image:  DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(nomImage)
                        )
                    ),
                  ),
                  Text("$prenom $nom"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
