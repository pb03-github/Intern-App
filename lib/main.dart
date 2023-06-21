import 'package:flutter/material.dart';
import 'package:page/all_scale_page.dart';
import 'package:page/HomePage.dart';


void main(){
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Welcome(),
    );
  }
}
class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(leading: const Icon(Icons.menu),title: const Text("EPS"),backgroundColor: Colors.redAccent,),
        body: SafeArea(
            child: Padding(
                padding: const EdgeInsets.all(20.0),
                child:
                Row(
                  children: [
                    Expanded(
                      child: TextButton(
                          onPressed: ((){Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));}),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black12, // background
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              CircleAvatar(
                                backgroundImage: AssetImage("images/download.jpg"),
                                radius: 60,
                              ),
                              SizedBox(height: 10,),
                              Text("Pateints",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black)
                              )
                            ],
                          )
                      ),
                    ),
                    const SizedBox(width: 20,),
                    Expanded(
                      child: TextButton(

                          onPressed: ((){
                            showDialog(context: context, builder: (context){
                              return AlertDialog(
                                title: const Text('ESRS Scales',style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold
                                ),),
                                actions: [
                                  Column(
                                    children: [
                                      const Text('Pateint ID'),
                                      const SizedBox(height: 10,),
                                      TextField(
                                          decoration: InputDecoration(
                                              prefixIcon: const Icon(Icons.search,color: Colors.red,),
                                              border: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(10)
                                              )
                                          )
                                      ),
                                      const SizedBox(height: 20,),
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Row(
                                          children: [

                                            Expanded(child: ElevatedButton(onPressed: ((){Navigator.pop(context);}),style: ElevatedButton.styleFrom(primary: Colors.red), child: const Padding(
                                              padding: EdgeInsets.all(6.0),
                                              child: Text("Back",style: TextStyle(fontSize: 14),),
                                            ),)),
                                            const SizedBox(width: 20,),
                                            Expanded(child: ElevatedButton(onPressed: ((){Navigator.push(context, MaterialPageRoute(builder: (context) =>  ALL_SCALE_PAGE()));}),style: ElevatedButton.styleFrom(primary: Colors.red), child: const Padding(
                                              padding: EdgeInsets.all(6.0),
                                              child: Text("Next",style: TextStyle(fontSize: 14)),
                                            ),)),
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                                ],

                              );
                            });

                          }),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black12, // background
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              CircleAvatar(
                                backgroundImage: AssetImage("images/4647455.png"),
                                backgroundColor: Colors.white,
                                radius: 60,
                              ),
                              SizedBox(height: 10,),
                              Text("Scales",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black)
                              )
                            ],
                          )
                      ),
                    )
                  ],
                )
            )
        )
    );
  }
}
