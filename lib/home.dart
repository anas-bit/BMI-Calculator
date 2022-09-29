import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Home({this.bmiResult,this.resultText ,this.interpretationlabel}) {
    // TODO: implement Home
    throw UnimplementedError();
  }

  late final String bmiResult;
  late final String resultText;
  late final String interpretationlabel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Result Page"),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.blueGrey,
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                child: const Text('Your Result' ,  textAlign: TextAlign.center,),
              ),
            ),
            Expanded(
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(resultText.toUpperCase(), textAlign: TextAlign.center,),
                    Text(bmiResult,  textAlign: TextAlign.center,),
                    Text(interpretationlabel, textAlign: TextAlign.center,),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


