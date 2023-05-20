


import 'package:ausig/speech.dart';
import 'package:ausig/splash2.dart';
import 'package:flutter/material.dart';

class options extends StatelessWidget {
  const options({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        color: Colors.red,
        child:so()
      ),
    );
  }
}

class so extends StatelessWidget {
  const so({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[dashBg, content],
      ),
    );
  }

  get dashBg => Column(
    children: <Widget>[
      Expanded(
        child: Container(color: Color(0xFF17262A)),
        flex: 2,
      ),
      Expanded(
        child: Container(color: Color(0XFFF5EAE3)),
        flex: 5,
      ),
    ],
  );

  get content => Container(
    child: Column(
      children: <Widget>[
        header,
        grid,
      ],
    ),
  );

  get header => ListTile(
    contentPadding: EdgeInsets.only(left: 20, right: 20, top: 40),

    title: Center(
      child: Text(
        "AU-SIG",
        style: TextStyle(
            fontSize: 45.0,
            fontFamily: 'Anton',
            letterSpacing: 2,
            color: Color(0XFFF5EAE3)
          // fontWeight: FontWeight.bold
        ),
      ),
    ),

  );

  get grid => Builder(
    builder: (context) {
      return Expanded(
        child: Container(
          padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
          child: GridView.count(
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            crossAxisCount: 2,
            childAspectRatio: .90,
            children:[
              TextButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => splash2()),
                );
              },
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                ),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[Text('ASL',style: TextStyle(fontSize: 35.0))],
                  ),
                ),
              ),

            ),
              TextButton(

  onPressed: (){
  Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => splash2()),
  );
                },
                child: Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[Text('ISL',style: TextStyle(fontSize: 35.0))],
                    ),
                  ),
                ),

              ),
              TextButton(

  onPressed: (){
  Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => splash2()),
  );},
                child: Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[Text('BSL',style: TextStyle(fontSize: 35.0))],
                    ),
                  ),
                ),

              ),
              TextButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => splash2()),
                  );},
                child: Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[Text('JSL',style: TextStyle(fontSize: 35.0),)],
                    ),
                  ),
                ),

              )],
          ),
        ),
      );
    }
  );
}


