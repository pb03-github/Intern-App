import 'package:flutter/material.dart';

class SecondRoute extends StatefulWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  State<SecondRoute> createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Pateint details')),
        backgroundColor: Colors.red,

      ),
      body:Container(
        margin: const EdgeInsets.all(20),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  child: Text('Pateint registration Details'),
                ),
                const SizedBox(height: 10.0,),
                Table(
                  border: TableBorder.all(
                      color: Colors.grey,
                      style: BorderStyle.solid,
                      width: 2),
                  children: [
                    TableRow(
                        children:[
                          Column(
                              children: const [
                                SizedBox(height: 5.0,),
                                Text('Name'),
                                SizedBox(height: 5.0,),
                              ]
                          ),
                          Column(
                            children: const [
                              SizedBox(height: 5.0,),
                              Text('Prabhat'),
                              SizedBox(height: 5.0,),
                            ],
                          ),
                        ]
                    ),
                    TableRow(
                        children:[
                          Column(
                              children: const [
                                SizedBox(height: 5.0,),
                                Text('ID'),
                                SizedBox(height: 5.0,),
                              ]
                          ),
                          Column(
                            children: const [
                              SizedBox(height: 5.0,),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text('AIIMS/JDH/2019/06/014941'),
                              ),
                              SizedBox(height: 5.0,),
                            ],
                          ),
                        ]
                    ),
                    TableRow(
                        children:[
                          Column(
                              children: const [
                                SizedBox(height: 5.0,),
                                Text('Address'),
                                SizedBox(height: 5.0,),
                              ]
                          ),
                          Column(
                            children: const [
                              SizedBox(height: 5.0,),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text('B-233,saraswati vihar  nagar ,krishna mandi,jodhpur'),
                              ),
                              SizedBox(height: 5.0,),
                            ],
                          ),
                        ]
                    ),
                    TableRow(
                        children:[
                          Column(
                              children: const [
                                SizedBox(height: 5.0,),
                                Text("PINCODE"),
                                SizedBox(height: 5.0,),
                              ]
                          ),
                          Column(
                            children: const [
                              SizedBox(height: 5.0,),
                              Text('302031'),
                              SizedBox(height: 5.0,),
                            ],
                          ),
                        ]
                    ),
                    TableRow(
                        children:[
                          Column(
                              children: const [
                                SizedBox(height: 5.0,),
                                Text("Locality"),
                                SizedBox(height: 5.0,),
                              ]
                          ),
                          Column(
                            children: const [
                              SizedBox(height: 5.0,),
                              Text('Urban'),
                              SizedBox(height: 5.0,),
                            ],
                          ),
                        ]
                    ),
                    TableRow(
                        children:[
                          Column(
                              children: const [
                                SizedBox(height: 5.0,),
                                Text("Father's name"),
                                SizedBox(height: 5.0,),
                              ]
                          ),
                          Column(
                            children: const [
                              SizedBox(height: 5.0,),
                              Text('rajmal Sharma'),
                              SizedBox(height: 5.0,),
                            ],
                          ),
                        ]
                    ),
                    TableRow(
                        children:[
                          Column(
                              children: const [
                                SizedBox(height: 5.0,),
                                Text('Contact number'),
                                SizedBox(height: 5.0,),
                              ]
                          ),
                          Column(
                            children: const [
                              SizedBox(height: 5.0,),
                              Text('9434343495'),
                              SizedBox(height: 5.0,),
                            ],
                          ),
                        ]
                    ),
                    TableRow(
                        children:[
                          Column(
                              children: const [
                                SizedBox(height: 5.0,),
                                Text('Reg. Date'),
                                SizedBox(height: 5.0,),
                              ]
                          ),
                          Column(
                            children: const [
                              SizedBox(height: 5.0,),
                              Text('24 Jun 2020'),
                              SizedBox(height: 5.0,),
                            ],
                          ),
                        ]
                    ),
                    TableRow(
                        children:[
                          Column(
                              children: const [
                                SizedBox(height: 5.0,),
                                Text('Age'),
                                SizedBox(height: 5.0,),
                              ]
                          ),
                          Column(
                            children: const [
                              SizedBox(height: 5.0,),
                              Text('44'),
                              SizedBox(height: 5.0,),
                            ],
                          ),
                        ]
                    ),
                    TableRow(
                        children:[
                          Column(
                              children: const [
                                SizedBox(height: 5.0,),
                                Text('Gender'),
                                SizedBox(height: 5.0,),
                              ]
                          ),
                          Column(
                            children: const [
                              SizedBox(height: 5.0,),
                              Text('Female'),
                              SizedBox(height: 5.0,),
                            ],
                          ),
                        ]
                    ),
                  ],
                ),
                const SizedBox(height: 30.0),
                const Text('Diagnosis'),
                const SizedBox(height: 5.0),
                Table(
                  border: TableBorder.all(
                      color: Colors.grey,
                      style: BorderStyle.solid,
                      width: 2),
                  children: [
                    TableRow(
                        children:[
                          Column(
                              children: const [
                                SizedBox(height: 5.0,),
                                Text('Diagnosis Number'),
                                SizedBox(height: 5.0,),
                              ]
                          ),
                          Column(
                            children: const [
                              SizedBox(height: 5.0,),
                              Text('1073520'),
                              SizedBox(height: 5.0,),
                            ],
                          ),
                        ]
                    ),
                    TableRow(
                        children:[
                          Column(
                              children: const [
                                SizedBox(height: 5.0,),
                                Text('Diagnosis'),
                                SizedBox(height: 5.0,),
                              ]
                          ),
                          Column(
                            children: const [
                              SizedBox(height: 5.0,),
                              Text('Mental Illness'),
                              SizedBox(height: 5.0,),

                            ],
                          ),
                        ]
                    ),
                    TableRow(
                        children:[
                          Column(
                              children: const [
                                SizedBox(height: 5.0,),
                                Text('Sub Diagnosis'),
                                SizedBox(height: 5.0,),
                              ]
                          ),
                          Column(
                            children: const [
                              SizedBox(height: 5.0,),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text('Schizophrenia and other psychotic disorders'),
                              ),
                              SizedBox(height: 5.0,),
                            ],
                          ),
                        ]
                    ),
                  ],

                ),
                const SizedBox(height: 30.0),
                const SizedBox(height: 20,),
                const Text('Extrapyramidal Symptoms Details'),
                const SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(child: ElevatedButton(
                      onPressed: (){}, child: const Text("No"),

                    ),
                    ),
                    const SizedBox(width: 10,),
                    Expanded(child: ElevatedButton(onPressed: (){
                      showDialog(context: context, builder: (context){
                        return AlertDialog(
                          title: const Text('Symptom details',style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold
                          ),),
                          actions: [
                            Column(
                              children: [
                                const Text('1. Type of Symptoms'),
                                const SizedBox(height: 10,),
                                TextField(
                                    decoration: InputDecoration(
                                        prefixIcon: const Icon(Icons.edit,color: Colors.red,),
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10)
                                        )
                                    )
                                ),
                                const SizedBox(height: 20,),
                                const Text('2.Symptom date'),
                                TextField(
                                    decoration: InputDecoration(
                                        prefixIcon: const Icon(Icons.edit,color: Colors.red,),
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10)
                                        )
                                    )
                                ),
                                const SizedBox(height: 20,),
                                const Text('3. medication record'),
                                TextField(
                                    decoration: InputDecoration(
                                        prefixIcon: const Icon(Icons.edit,color: Colors.red,),
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10)
                                        )
                                    )
                                ),
                                const SizedBox(height: 30,)
                              ],
                            )
                          ],

                        );
                      });
                    }, child: const Text("Yes")
                    )
                    )
                  ],
                ),
                const SizedBox(height: 5.0),
                RichText(text: const TextSpan(
                    text: "History",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black
                    )
                )),
                detail_container(des: "Informants-self, and her daughter K/C/O schizophrenia from last 15 years Currently taking treatment from Psychiatrist (T. TFP+THP+CPZ (Mericalm forte) HS, Clonazepam 0.5mg HS, Olanzapine 2.5 mg HS, Alpra 0.25+Propranolo 10 ½ tab HS) and reported improvement."),
                const SizedBox(height: 20,),
                RichText(text: const TextSpan(
                    text: "Examination",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black
                    )
                )),
                detail_container(des: "No h/o chronic medical illness/SUD Past history-none reported Family history (of psychiatric disorders)-None reporte"),
                const SizedBox(height: 20,),
                RichText(text: const TextSpan(
                    text: "Treatment",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black
                    )
                )),
                detail_container(des: 'Psychoeducation done Ensure compliance'),
                const SizedBox(height: 20,),
                RichText(text: const TextSpan(
                    text: "Progress",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black
                    )
                )),
                detail_container(des: "Progress Report",),
                const SizedBox(height: 30,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class detail_container extends StatefulWidget {
   detail_container({required this.des,
    Key? key,
  }) : super(key: key);
  
  String des;
   @override
   State<detail_container> createState() => _detail_containerState();
}

class _detail_containerState extends State<detail_container> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        maxLines: 5,
        minLines: 1,
        decoration: InputDecoration(
            hintText: widget.des,
            prefixIcon: const Icon(Icons.edit,color: Colors.red,),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.grey
                )
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30)
            )
        ),
      ),
    );
  }
}
