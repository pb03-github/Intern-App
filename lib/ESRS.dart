import 'package:flutter/material.dart';
import 'all_scale_page.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:intl/intl.dart';


double Sum_esrs_scale3 = 0;
double Sum_esrs_scale4 = 0;
double Sum_esrs_scale5 = 0;
double Sum_esrs_scale6 = 0;
double Sum_esrs_scale7 = 0;
double Sum_esrs_scale8 = 0;
double sum_esrs = 0.0;



class Esrs_scale8 extends StatefulWidget {
  // Esrs_scale8({Key? key}) : super(key: key);

  @override
  State<Esrs_scale8> createState() => _Esrs_scale8State();
}

class _Esrs_scale8State extends State<Esrs_scale8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Clinical global impression of severity of  Akathisia'),
          backgroundColor: Colors.red,
        ),
        body: SingleChildScrollView(
          child: Column(children: [

            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 2),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Material(
                color: Colors.white,
                elevation: 10,
                borderRadius: BorderRadius.circular(10),
                shadowColor: Colors.grey,
                child: Container(
                  width: 360,
                  child: Column(
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Text(
                              'Considering your clinical experience how severe is the Akathisia at this time ',
                              style: TextStyle( fontSize: 20,
                                  fontFamily: 'NotoSerif',
                                  fontWeight: FontWeight.bold),
                            ),

                          ),
                          Divider(
                            color: Colors.grey,
                            thickness: 2,
                          ),
                          Slider(
                              min: 0.0,
                              max: 8.0,
                              divisions: 8,
                              value: Sum_esrs_scale8,
                              activeColor: Colors.red,
                              label: Sum_esrs_scale8.round().toString(),
                              onChanged: (newValue) {
                                setState(() {
                                  Sum_esrs_scale8 = newValue;
                                  sum_esrs = Sum_esrs_scale1+
                                      Sum_esrs_scale2 +
                                      Sum_esrs_scale3 +
                                      Sum_esrs_scale4 +
                                      Sum_esrs_scale5 +
                                      Sum_esrs_scale6 +
                                      Sum_esrs_scale7 +
                                      Sum_esrs_scale8;
                                });
                              }),
                          Column(
                            children: [
                              ESRS_5678_custom(),
                              Text(
                                'Score = $Sum_esrs_scale8',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            SizedBox(
              height: 10,
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  "Total Score = $sum_esrs",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.redAccent),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Expanded(
                      child: ElevatedButton(
                        onPressed: (() {
                          Navigator.pop(context);
                        }),
                        style: ElevatedButton.styleFrom(primary: Colors.red),
                        child: Padding(
                          padding: EdgeInsets.all(11.0),
                          child: Text(
                            "Back",
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                      )),
                  SizedBox(
                    width: 20,
                  ),Expanded(
                      child: ElevatedButton(
                        onPressed: (() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ALL_SCALE_PAGE()));
                        }),
                        style: ElevatedButton.styleFrom(primary: Colors.red),
                        child: Padding(
                          padding: EdgeInsets.all(11.0),
                          child: Text("Submit", style: TextStyle(fontSize: 25)),
                        ),
                      )),


                ],
              ),

            ),
            SizedBox(height: 15,),
            GestureDetector(
              onTap: ()=> printDocesrs(),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.87,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(
                    Radius.circular(35.0),
                  ),
                ),
                child:Center(
                  child: Text(
                    'Save as PDF',
                    style: TextStyle(fontSize: 18.0, color: Colors.white),
                  ),
                ),
              ),
            ),
          ]),
        ));
  }

}
Future<void> printDocesrs() async {
  final doc = pw.Document();
  doc.addPage(pw.Page(
      pageFormat: PdfPageFormat.a4,
      build: (pw.Context context) {
        return  pw.Column(
            children: [
              pw.SizedBox(
                child: pw.Text('Results',style: pw.TextStyle(fontWeight: pw.FontWeight.bold,fontSize: 20)),
              ),
              pw.SizedBox(height: 10.0,),

              pw.SizedBox(height: 25,),
              pw.Center(child: pw.Text("ESRS Scale",style: pw.TextStyle(fontWeight: pw.FontWeight.bold,fontSize: 30))),

              pw.SizedBox(height: 25,),
              pw.Table(border: pw.TableBorder.all(
                  style: pw.BorderStyle.solid,
                  width: 2),

                children: [
                  pw.TableRow(
                      children:[
                        pw.Column(
                            children:[
                              pw.SizedBox(height: 5.0,),
                              pw.Text('Pateint Name',style: pw.TextStyle(fontSize: 20),textAlign: pw.TextAlign.center),
                              pw.SizedBox(height: 5.0,),
                            ]
                        ),
                        pw.Column(
                          children: [
                            pw.SizedBox(height: 5.0,),
                            pw.Text('Pateint Name',style: pw.TextStyle(fontSize: 20),textAlign: pw.TextAlign.center),
                            pw.SizedBox(height: 5.0,),
                          ],
                        ),
                      ]
                  ),
                  pw.TableRow(
                      children:[
                        pw.Column(
                            children:[
                              pw.SizedBox(height: 5.0,),
                              pw.Text('Rater Name',style: pw.TextStyle(fontSize: 20),textAlign: pw.TextAlign.center),
                              pw.SizedBox(height: 5.0,),
                            ]
                        ),
                        pw.Column(
                          children: [
                            pw.SizedBox(height: 5.0,),
                            pw.Text('Rater Name',style: pw.TextStyle(fontSize: 20),textAlign: pw.TextAlign.center),
                            pw.SizedBox(height: 5.0,),
                          ],
                        ),
                      ]
                  ),
                  pw.TableRow(
                      children:[
                        pw.Column(
                            children:[
                              pw.SizedBox(height: 5.0,),
                              pw.Text('Date',style: pw.TextStyle(fontSize: 20),textAlign: pw.TextAlign.center),
                              pw.SizedBox(height: 5.0,),
                            ]
                        ),
                        pw.Column(
                          children: [
                            pw.SizedBox(height: 5.0,),
                            pw.Text(DateFormat('yyyy-MM-dd').format(DateTime.now()),style: pw.TextStyle(fontSize: 20),textAlign: pw.TextAlign.center),
                            pw.SizedBox(height: 5.0,),
                          ],
                        ),
                      ]
                  ),
                  pw.TableRow(
                      children:[
                        pw.Column(
                            children:[
                              pw.SizedBox(height: 5.0,),
                              pw.Text('Questionnaire',style: pw.TextStyle(fontSize: 20),textAlign: pw.TextAlign.center),
                              pw.SizedBox(height: 5.0,),
                            ]
                        ),
                        pw.Column(
                          children: [
                            pw.SizedBox(height: 5.0,),
                            pw.Text('$Sum_esrs_scale1',style: pw.TextStyle(fontSize: 20),textAlign: pw.TextAlign.center),
                            pw.SizedBox(height: 5.0,),
                          ],
                        ),
                      ]
                  ),

                  pw.TableRow(
                      children:[
                        pw.Column(
                            children:[
                              pw.SizedBox(height: 5.0,),
                              pw.Text('Examination : Parkinsons and Akathisia',style: pw.TextStyle(fontSize: 20),textAlign: pw.TextAlign.center),
                              pw.SizedBox(height: 5.0,),
                            ]
                        ),
                        pw.Column(
                          children: [
                            pw.SizedBox(height: 5.0,),
                            pw.Text('$Sum_esrs_scale2',style: pw.TextStyle(fontSize: 20),textAlign: pw.TextAlign.center),
                            pw.SizedBox(height: 5.0,),
                          ],
                        ),
                      ]
                  ),
                  pw.TableRow(
                      children:[
                        pw.Column(
                            children:[
                              pw.SizedBox(height: 5.0,),
                              pw.Text('Examination : Dystonia',style: pw.TextStyle(fontSize: 20),textAlign: pw.TextAlign.center),
                              pw.SizedBox(height: 5.0,),
                            ]
                        ),
                        pw.Column(
                          children: [
                            pw.SizedBox(height: 5.0,),
                            pw.Text('$Sum_esrs_scale3',style: pw.TextStyle(fontSize: 20),textAlign: pw.TextAlign.center),
                            pw.SizedBox(height: 5.0,),
                          ],
                        ),
                      ]
                  ),
                  pw.TableRow(
                      children:[
                        pw.Column(
                            children:[
                              pw.SizedBox(height: 5.0,),
                              pw.Text('Examination : Dyskinetic Movement',style: pw.TextStyle(fontSize: 20),textAlign: pw.TextAlign.center),
                              pw.SizedBox(height: 5.0,),
                            ]
                        ),
                        pw.Column(
                          children: [
                            pw.SizedBox(height: 5.0,),
                            pw.Text('$Sum_esrs_scale4',style: pw.TextStyle(fontSize: 20),textAlign: pw.TextAlign.center),
                            pw.SizedBox(height: 5.0,),
                          ],
                        ),
                      ]
                  ),
                  pw.TableRow(
                      children:[
                        pw.Column(
                            children:[
                              pw.SizedBox(height: 5.0,),
                              pw.Text('Clinical Global Impression of Severity of Dyskensia',style: pw.TextStyle(fontSize: 20),textAlign: pw.TextAlign.center),
                              pw.SizedBox(height: 5.0,),
                            ]
                        ),
                        pw.Column(
                          children: [
                            pw.SizedBox(height: 5.0,),
                            pw.Text('$Sum_esrs_scale5',style: pw.TextStyle(fontSize: 20),textAlign: pw.TextAlign.center),
                            pw.SizedBox(height: 5.0,),
                          ],
                        ),
                      ]
                  ),
                  pw.TableRow(
                      children:[
                        pw.Column(
                            children:[
                              pw.SizedBox(height: 5.0,),
                              pw.Text('Clinical Global Impression of Severity of Parkinson',style: pw.TextStyle(fontSize: 20),textAlign: pw.TextAlign.center),
                              pw.SizedBox(height: 5.0,),
                            ]
                        ),
                        pw.Column(
                          children: [
                            pw.SizedBox(height: 5.0,),
                            pw.Text('$Sum_esrs_scale6',style: pw.TextStyle(fontSize: 20),textAlign: pw.TextAlign.center),
                            pw.SizedBox(height: 5.0,),
                          ],
                        ),
                      ]
                  ),
                  pw.TableRow(
                      children:[
                        pw.Column(
                            children:[
                              pw.SizedBox(height: 5.0,),
                              pw.Text('Clinical Global Impression of Severity of Dystonia',style: pw.TextStyle(fontSize: 20),textAlign: pw.TextAlign.center),
                              pw.SizedBox(height: 5.0,),
                            ]
                        ),
                        pw.Column(
                          children: [
                            pw.SizedBox(height: 5.0,),
                            pw.Text('$Sum_esrs_scale7',style: pw.TextStyle(fontSize: 20),textAlign: pw.TextAlign.center),
                            pw.SizedBox(height: 5.0,),
                          ],
                        ),
                      ]
                  ),
                  pw.TableRow(
                      children:[
                        pw.Column(
                            children:[
                              pw.SizedBox(height: 5.0,),
                              pw.Text('Clinical Global Impression of Severity of Akathisia',style: pw.TextStyle(fontSize: 20),textAlign: pw.TextAlign.center),
                              pw.SizedBox(height: 5.0,),
                            ]
                        ),
                        pw.Column(
                          children: [
                            pw.SizedBox(height: 5.0,),
                            pw.Text('$Sum_esrs_scale8',style: pw.TextStyle(fontSize: 20),textAlign: pw.TextAlign.center),
                            pw.SizedBox(height: 5.0,),
                          ],
                        ),
                      ]
                  ),
                  pw.TableRow(
                      children:[
                        pw.Column(
                            children:[
                              pw.SizedBox(height: 5.0,),
                              pw.Text('Total ESRS Score',style: pw.TextStyle(fontSize: 20),textAlign: pw.TextAlign.center),
                              pw.SizedBox(height: 5.0,),
                            ]
                        ),
                        pw.Column(
                          children: [
                            pw.SizedBox(height: 5.0,),
                            pw.Text('$sum_esrs',style: pw.TextStyle(fontSize: 20),textAlign: pw.TextAlign.center),
                            pw.SizedBox(height: 5.0,),
                          ],
                        ),
                      ]
                  ),


                ],
              ),
            ]
        );
      }));
  await Printing.layoutPdf(onLayout: (PdfPageFormat format) async => doc.save());// Page
}

class Esrs_scale3 extends StatefulWidget {
  // Esrs_scale3({Key? key}) : super(key: key);

  @override
  State<Esrs_scale3> createState() => _Esrs_scale3State();
}

class _Esrs_scale3State extends State<Esrs_scale3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Examination'),
          backgroundColor: Colors.red,
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Container(
                child: Text(
                  'Dystonia',
                  style: TextStyle(fontSize: 25,fontFamily: "NotoSerif"),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Container(
                child: Text(
                  'Based on examination and observation',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 2),
              borderRadius: BorderRadius.all(Radius.circular(10)),),
              child: Material(
                color: Colors.white,
                elevation: 10,
                borderRadius: BorderRadius.circular(10),
                shadowColor: Colors.grey,
                child: Container(
                  width: 360,
                  child: Column(
                    children: [
                      Container(
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'Acute Torsion',
                                  style: TextStyle(
                                      fontSize: 20, fontFamily: 'NotoSerif'),
                                ),
                              ),Divider(
                                color: Colors.grey,
                                thickness: 2,
                              ),
                              Slider(
                                  min: 0.0,
                                  max: 6.0,
                                  divisions: 6,
                                  value: Sum_esrs_scale3,
                                  activeColor: Colors.red,
                                  label: Sum_esrs_scale3.round().toString(),
                                  onChanged: (newValue) {
                                    setState(() {
                                      Sum_esrs_scale3 = newValue;
                                    });
                                  }),
                              Container(
                                  child: Column(
                                    children: [
                                      ListTile(
                                        title: Text(
                                          '0 = Absent',
                                          style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                        ),
                                      ),
                                      ListTile(
                                        title: Text('1 = Very mild',style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),),
                                      ),
                                      ListTile(
                                        title: Text(
                                          '2 = Mild',
                                          style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                        ),
                                      ),
                                      ListTile(
                                        title: Text(
                                          '3 = Moderate',
                                          style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                        ),
                                      ),
                                      ListTile(
                                        title: Text(
                                          '4 = Moderately severe',
                                          style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                        ),
                                      ),
                                      ListTile(
                                        title: Text(
                                          '5 = Severe',
                                          style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                        ),
                                      ),
                                      ListTile(
                                        title: Text(
                                          '6 = Extremely Severe',
                                          style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                        ),

                                      ),

                                      Divider(
                                        color: Colors.grey,
                                        thickness: 2,
                                      ),
                                      Text(
                                        'Score = $Sum_esrs_scale3',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      )

                                    ],

                                  ))
                              ],
                          )),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Expanded(
                      child: ElevatedButton(
                        onPressed: (() {
                          Navigator.pop(context);
                        }),
                        style: ElevatedButton.styleFrom(primary: Colors.red),
                        child: Padding(
                          padding: EdgeInsets.all(11.0),
                          child: Text(
                            "Back",
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child: ElevatedButton(
                        onPressed: (() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Esrs_scale4()));
                          Sum_esrs_scale4 = 0;
                        }),
                        style: ElevatedButton.styleFrom(primary: Colors.red),
                        child: Padding(
                          padding: EdgeInsets.all(11.0),
                          child: Text("Next", style: TextStyle(fontSize: 25)),
                        ),
                      )),
                ],
              ),
            ),
          ]),
        ));
  }
}

class Esrs_scale4 extends StatefulWidget {
  // Esrs_scale4({Key? key}) : super(key: key);

  @override
  State<Esrs_scale4> createState() => _Esrs_scale4State();
}

class _Esrs_scale4State extends State<Esrs_scale4> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Examination'),
          backgroundColor: Colors.red,
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Container(
                child: Text(
                  'Dyskinetic Movement',
                  style: TextStyle(fontSize: 25,fontFamily: "NotoSerif"),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Container(
                child: Text(
                  'Based on examinations and obseervations',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Esrs_scale4_custom(title: "Lingual Movement"),

            SizedBox(
              height: 20,
            ),
            Esrs_scale4_custom(title: "Jaw Movement"),

            SizedBox(
              height: 20,
            ),
            Esrs_scale4_custom(title: "Bucco Labiel Movement"),

            SizedBox(
              height: 20,
            ),
            Esrs_scale4_custom(title: "Truncal Movement"),

            SizedBox(
              height: 20,
            ),
            Esrs_scale4_custom(title: "Lower Extremities"),

            SizedBox(
              height: 20,
            ),
            Esrs_scale4_custom(title: "Upper Extremities"),

            SizedBox(
              height: 20,
            ),
            Esrs_scale4_custom(title: "Other Movement"),

            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.87,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.all(
                  Radius.circular(30.0),
                ),
              ),
              child: TextButton(
                onPressed:((){setState((){Sum_esrs_scale4 = Sum_esrs_scale4+0;});}) ,
                child: Text(
                  'Score',
                  style: TextStyle(fontSize: 18.0, color: Colors.white),
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  " $Sum_esrs_scale4",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.red),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Expanded(
                      child: ElevatedButton(
                        onPressed: (() {
                          Navigator.pop(context);
                        }),
                        style: ElevatedButton.styleFrom(primary: Colors.red),
                        child: Padding(
                          padding: EdgeInsets.all(11.0),
                          child: Text(
                            "Back",
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child: ElevatedButton(
                        onPressed: (() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Esrs_scale5()));
                        }),
                        style: ElevatedButton.styleFrom(primary: Colors.red),
                        child: Padding(
                          padding: EdgeInsets.all(11.0),
                          child: Text("Next", style: TextStyle(fontSize: 25)),
                        ),
                      )),
                ],
              ),
            ),
          ]),
        ));
  }
}


class Esrs_scale4_custom extends StatefulWidget {

  Esrs_scale4_custom({required this.title});
  final String title;

  @override
  State<Esrs_scale4_custom> createState() => _Esrs_scale4_customState();
}

class _Esrs_scale4_customState extends State<Esrs_scale4_custom> {
  double y = 0;
  double x = 0;
  @override
  Widget build(BuildContext context) {
    return Container(decoration: BoxDecoration(
      border: Border.all(color: Colors.grey, width: 2),
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
      child: Material(
        color: Colors.white,
        elevation: 10,
        borderRadius: BorderRadius.circular(10),
        shadowColor: Colors.grey,
        child: SizedBox(
          width: 360,
          child: Column(
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        widget.title,
                        style: TextStyle(fontSize: 18, fontFamily: 'NotoSerif'),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 2,
                  ),
                  Slider(
                      min: 0.0,
                      max: 4.0,
                      divisions: 4,
                      value: y,
                      activeColor: Colors.red,
                      label: y.round().toString(),
                      onChanged: (newValue) {
                        setState(() {
                          y = newValue;
                          Sum_esrs_scale4 = Sum_esrs_scale4 + y - x;
                          x = y;
                        });
                      }),

                  Column(
                    children: [
                      ListTile(
                        title: Text(
                          '0 = None',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      ListTile(
                        title: Text(
                          '1 = Borderline',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      ListTile(
                        title: Text(
                          '2 = Clearly present ',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      ListTile(
                        title: Text(
                          '3 = Occasional partial protrution',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      ListTile(
                        title: Text(
                          '3 = With complete protrution',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Divider(
                        color: Colors.grey,
                        thickness: 2,
                      ),
                      Text(
                        'Score = $y',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class Esrs_scale5 extends StatefulWidget {
  // Esrs_scale5({Key? key}) : super(key: key);

  @override
  State<Esrs_scale5> createState() => _Esrs_scale5State();
}

class _Esrs_scale5State extends State<Esrs_scale5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Clinical global impression of severity of  Dyskensia'),
          backgroundColor: Colors.red,
        ),
        body: SingleChildScrollView(
          child: Column(children: [

            SizedBox(
              height: 20,
            ),
            Container(decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 2),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
              child: Material(
                color: Colors.white,
                elevation: 10,
                borderRadius: BorderRadius.circular(10),
                shadowColor: Colors.grey,
                child: Container(
                  width: 360,
                  child: Column(
                    children: [
                      Container(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),Padding(
                                padding: EdgeInsets.all(15.0),
                                child: Container(
                                  child: Text(
                                    'Considering your clinical experience how severe is the Dyskinsia at this time '
                                      ,style: TextStyle(fontFamily: "NotoSerif",fontSize: 20,),textAlign: TextAlign.center,
                                  ),
                                ),
                              ),Divider(
                                color: Colors.grey,
                                thickness: 2,
                              ),
                              Slider(
                                  min: 0.0,
                                  max: 8.0,
                                  divisions: 8,
                                  value: Sum_esrs_scale5,
                                  activeColor: Colors.red,
                                  label: Sum_esrs_scale5.round().toString(),
                                  onChanged: (newValue) {
                                    setState(() {
                                      Sum_esrs_scale5 = newValue;
                                    });
                                  }),
                              Container(
                                  child: Column(
                                    children: [
                                      ESRS_5678_custom(),

                                    ],
                                  ))
                            ],
                          )),
                      Text(
                        'Score = $Sum_esrs_scale5',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Expanded(
                      child: ElevatedButton(
                        onPressed: (() {
                          Navigator.pop(context);
                        }),
                        style: ElevatedButton.styleFrom(primary: Colors.red),
                        child: Padding(
                          padding: EdgeInsets.all(11.0),
                          child: Text(
                            "Back",
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child: ElevatedButton(
                        onPressed: (() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Esrs_scale6()));
                        }),
                        style: ElevatedButton.styleFrom(primary: Colors.red),
                        child: Padding(
                          padding: EdgeInsets.all(11.0),
                          child: Text("Next", style: TextStyle(fontSize: 25)),
                        ),
                      )),
                ],
              ),
            ),
          ]),
        ));
  }
}

class Esrs_scale6 extends StatefulWidget {
  // Esrs_scale6({Key? key}) : super(key: key);

  @override
  State<Esrs_scale6> createState() => _Esrs_scale6State();
}

class _Esrs_scale6State extends State<Esrs_scale6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Clinical global impression of severity of  Parkinson'),
          backgroundColor: Colors.red,
        ),
        body: SingleChildScrollView(
          child: Column(children: [

            SizedBox(
              height: 20,
            ),
            Container(decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 2),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
              child: Material(
                color: Colors.white,
                elevation: 10,
                borderRadius: BorderRadius.circular(10),
                shadowColor: Colors.grey,
                child: Container(
                  width: 360,
                  child: Column(
                    children: [
                      Container(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),Padding(
                                padding: EdgeInsets.all(15.0),
                                child: Container(
                                  child: Text(
                                    'Considering your clinical experience how severe is the Parkinsons at this time',
                                    style: TextStyle(fontSize: 20,fontFamily: "Notoserif"),textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                        Divider(
                      color: Colors.grey,
                      thickness: 2,
                      ),
                              Slider(
                                  min: 0.0,
                                  max: 8.0,
                                  divisions: 8,
                                  value: Sum_esrs_scale6,
                                  activeColor: Colors.red,
                                  label: Sum_esrs_scale6.round().toString(),
                                  onChanged: (newValue) {
                                    setState(() {
                                      Sum_esrs_scale6 = newValue;
                                    });
                                  }),
                              Container(
                                  child: Column(
                                    children: [
                                      ESRS_5678_custom(),
                                      Text(
                                        'Score = $Sum_esrs_scale6',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      )
                                    ],
                                  ))
                            ],
                          )),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Expanded(
                      child: ElevatedButton(
                        onPressed: (() {
                          Navigator.pop(context);
                        }),
                        style: ElevatedButton.styleFrom(primary: Colors.red),
                        child: Padding(
                          padding: EdgeInsets.all(11.0),
                          child: Text(
                            "Back",
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child: ElevatedButton(
                        onPressed: (() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Esrs_scale7()));
                        }),
                        style: ElevatedButton.styleFrom(primary: Colors.red),
                        child: Padding(
                          padding: EdgeInsets.all(11.0),
                          child: Text("Next", style: TextStyle(fontSize: 25)),
                        ),
                      )),
                ],
              ),
            ),
          ]),
        ));
  }
}

class Esrs_scale7 extends StatefulWidget {
  // Esrs_scale7({Key? key}) : super(key: key);

  @override
  State<Esrs_scale7> createState() => _Esrs_scale7State();
}

class _Esrs_scale7State extends State<Esrs_scale7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Clinical global impression of severity of  Dystonia'),
          backgroundColor: Colors.red,
        ),
        body: SingleChildScrollView(
          child: Column(children: [

            SizedBox(
              height: 20,
            ),
            Container(decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 2),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
              child: Material(
                color: Colors.white,
                elevation: 10,
                borderRadius: BorderRadius.circular(10),
                shadowColor: Colors.grey,
                child: Container(
                  width: 360,
                  child: Column(
                    children: [
                      Container(
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(15.0),
                                child: Container(
                                  child: Text(
                                    'Considering your clinical experience how severe is the Dystonia at this time ',
                                    style: TextStyle(fontSize: 20,fontFamily: "NotoSerif"),textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),Divider(
                                color: Colors.grey,
                                thickness: 2,
                              ),
                              Slider(
                                  min: 0.0,
                                  max: 8.0,
                                  divisions: 8,
                                  value: Sum_esrs_scale7,
                                  activeColor: Colors.red,
                                  label: Sum_esrs_scale7.round().toString(),
                                  onChanged: (newValue) {
                                    setState(() {
                                      Sum_esrs_scale7 = newValue;
                                    });
                                  }),
                              Container(
                                  child: Column(
                                    children: [
                                      ESRS_5678_custom(),
                                      Text(
                                        'Score = $Sum_esrs_scale7',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      )
                                    ],
                                  ))
                            ],
                          )),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Expanded(
                      child: ElevatedButton(
                        onPressed: (() {
                          Navigator.pop(context);
                        }),
                        style: ElevatedButton.styleFrom(primary: Colors.red),
                        child: Padding(
                          padding: EdgeInsets.all(11.0),
                          child: Text(
                            "Back",
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child: ElevatedButton(
                        onPressed: (() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Esrs_scale8()));
                        }),
                        style: ElevatedButton.styleFrom(primary: Colors.red),
                        child: Padding(
                          padding: EdgeInsets.all(11.0),
                          child: Text("Next", style: TextStyle(fontSize: 25)),
                        ),
                      )),
                ],
              ),
            ),
          ]),
        ));
  }
}


class ESRS_5678_custom extends StatefulWidget {
  ESRS_5678_custom();


  @override
  State<ESRS_5678_custom> createState() => _ESRS_5678_customState();
}

class _ESRS_5678_customState extends State<ESRS_5678_custom> {

  @override
  Widget build(BuildContext context) {
    return Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      ListTile(
                        title: Text(
                          "0 = Absent",
                          style: TextStyle(
                              color: Colors.grey, fontStyle: FontStyle.italic),
                        ),
                      ),
                      ListTile(
                        title: Text(
                          "1 = Borderline",
                          style: TextStyle(
                              color: Colors.grey, fontStyle: FontStyle.italic),
                        ),
                      ),
                      ListTile(
                        title: Text(
                          "2 = Very Mild",
                          style: TextStyle(
                              color: Colors.grey, fontStyle: FontStyle.italic),
                        ),
                      ),
                      ListTile(
                        title: Text(
                          "3 = Mild",
                          style: TextStyle(
                              color: Colors.grey, fontStyle: FontStyle.italic),
                        ),
                      ),
                      ListTile(
                        title: Text(
                          "4 = Moderate",
                          style: TextStyle(
                              color: Colors.grey, fontStyle: FontStyle.italic),
                        ),
                      ),
                      ListTile(
                        title: Text(
                          "5 = Moderately Severe",
                          style: TextStyle(
                              color: Colors.grey, fontStyle: FontStyle.italic),
                        ),
                      ),
                      ListTile(
                        title: Text(
                          "6 = Marked",
                          style: TextStyle(
                              color: Colors.grey, fontStyle: FontStyle.italic),
                        ),
                      ),
                      ListTile(
                        title: Text(
                          "7 = Severe",
                          style: TextStyle(
                              color: Colors.grey, fontStyle: FontStyle.italic),
                        ),
                      ),
                      ListTile(
                        title: Text(
                          "8 = Extremely Severe",
                          style: TextStyle(
                              color: Colors.grey, fontStyle: FontStyle.italic),
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                        thickness: 2,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
    );
  }
}
