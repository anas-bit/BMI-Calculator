import 'package:bmi_calculator/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
      primaryColor:const Color(0xFF0A0E21),
      scaffoldBackgroundColor:  const Color(0xFF0A0E21),
      ),
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {

     int height = 100;
     int weight = 60;
     int age = 18;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
           appBar: AppBar(
           title: const Text("BMI Calculator"),
           centerTitle: true,
      ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Card(
                          color: Colors.white70,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                FontAwesomeIcons.mars,
                                size: 80,
                                color: Colors.black,
                              ),
                              Text("Male", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Card(
                          color: Colors.white70,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                FontAwesomeIcons.venus,
                                size: 80,
                                color: Colors.black,
                              ),
                              Text("Female", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                    child: Card(
                      color: Colors.white70,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Height", style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),),
                         const SizedBox(
                           height: 20,
                         ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(height.toString(), style: const TextStyle(fontSize: 50, color: Colors.black, fontWeight: FontWeight.bold),),
                              const Text("cm", style: TextStyle(fontSize: 20, color: Colors.black),),
                            ],
                          ),
                          Slider(
                            activeColor: Colors.black,
                            inactiveColor: Colors.grey,
                            min: 100,
                            max: 220,
                            value: height.toDouble(),
                            onChanged: (double value) {
                              setState(() {
                                height = value.round();
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Card(
                          color: Colors.white70,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:  [
                              const Text("Weight", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(weight.toString(), style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 40, color: Colors.black),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                      backgroundColor: const Color(0xff8d8888),
                                      child: const Icon(
                                        Icons.add,
                                        size: 30,
                                      ),
                                    onPressed: (){
                                    setState(() {
                                      weight+=1;
                                    });
                                  }
                                  ),
                                  const SizedBox(
                                    width: 50,
                                  ),
                                  FloatingActionButton(

                                      backgroundColor: const Color(0xff8d8888),
                                      child: const Icon(
                                        Icons.remove,
                                        size: 30,
                                      ),
                                      onPressed: (){
                                    setState(() {
                                      weight-=1;
                                    });
                                  })
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Card(
                          color: Colors.white70,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:  [
                              const Text("Age", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(age.toString(), style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 40, color: Colors.black),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                      backgroundColor: const Color(0xff8d8888),
                                      child: const Icon(
                                        Icons.add,
                                        size: 30,
                                      ),
                                      onPressed: (){
                                        setState(() {
                                          age+=1;
                                        });
                                      }
                                  ),
                                  const SizedBox(
                                    width: 50,
                                  ),
                                  FloatingActionButton(
                                    backgroundColor: const Color(0xff8d8888),
                                      child: const Icon(
                                        Icons.remove,
                                        size: 30,
                                      ),
                                      onPressed: (){
                                        setState(() {
                                          age-=1;
                                        });
                                      })
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(
                                MaterialPageRoute(
                                builder: (BuildContext context) => const Home()
                            )
                            );
                          },
                          child: Container(
                            color: const Color(0xff8d8888),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.all(15.0),
                                  child: Text("Calculate",style: TextStyle(fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold), ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
    ),
    );
  }
}


