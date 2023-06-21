import 'package:flutter/material.dart';
import 'ESRS.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:intl/intl.dart';
// import 'main.dart';
double Sum_esrs_scale1 = 0;
double Sum_esrs_scale2 = 0;
double Sum_esrs_scale3 = 0;
double Sum_esrs_scale4 = 0;
double Sum_esrs_scale5 = 0;
double Sum_esrs_scale6 = 0;
double Sum_esrs_scale7 = 0;
double Sum_esrs_scale8 = 0;
double sum_esrs = 0.0;
double Sum_aims = 0;
var dent_1 = "";
var dent_2 = "";
var dent_3 = "";
var dent_4 = "";

double sum = 0;
double sum_msa = 0;

// The below class contains the second screen when patient is pressed on the homepage.This contains all the buttons for eps scales 
class ALL_SCALE_PAGE extends StatefulWidget {
  // ALL_SCALE_PAGE({}) : super(key: key);

  @override
  State<ALL_SCALE_PAGE> createState() => _ALL_SCALE_PAGEState();
}

class _ALL_SCALE_PAGEState extends State<ALL_SCALE_PAGE> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // leading: IconButton(
          //   icon: Icon(Icons.arrow_back),
          //   onPressed: (() {
          //     Navigator.push(
          //         context, MaterialPageRoute(builder: (context) => Welcome()));
          //   }),
          // ),
          title: Text('SCALES'),
          backgroundColor: Colors.redAccent,
        ),
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Text(
                      "EPS Scales",
                      style: TextStyle(
                          fontFamily: 'Notoserif',
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.grey),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        onPressed: (() {


                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => scale()));
                          Sum_esrs_scale1 = 0;
                        }),
                        style:
                        ElevatedButton.styleFrom(primary: Colors.redAccent),
                        child: ListTile(
                          title: Text(
                            'ESRS Scales',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        onPressed: (() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Msa_scales()));
                          sum_msa = 0;
                        }),
                        style:
                        ElevatedButton.styleFrom(primary: Colors.redAccent),
                        child: ListTile(
                          title: Text(
                            'MSA Scales',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        onPressed: (() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Aims_page()));
                          aims_sum = 0;
                          dent_1 = "";
                          dent_2 = "";
                          dent_3 = "";
                          dent_4 = "";

                        }),
                        style:
                        ElevatedButton.styleFrom(primary: Colors.redAccent),
                        child: ListTile(
                          title: Text(
                            'AIMS Scales',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),

            ],
          ),
        ));
  }
}

// the below class is for the MSA scale 
class Msa_scales extends StatefulWidget {
  // Msa_scales({}) : super(key: key);

  @override
  State<Msa_scales> createState() => _Msa_scalesState();
}

class _Msa_scalesState extends State<Msa_scales> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "MSA Scales",
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.redAccent,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Text("MODIFIED SIMPSON-ANGUS SCALE (MSAS)",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center),
                    SizedBox(height: 10),
                    Text(
                        "Each item is rated on a 5-point scale of severity. Select the rating that best describes the subject’s present condition.",
                        style: TextStyle(fontSize: 15),
                        textAlign: TextAlign.center),
                    SizedBox(
                      height: 20,
                    ),
                    MSA_scale_custom(
                        title: "Gait",
                        des:
                        "The patient is examined as he walks into the examining room: his gait, the swing of his arms, his general posture all form the basis for an overall score for this item.",
                        des1: "0: Normal",
                        des2:
                        "1: Diminution in swing while the subject is walking",
                        des3:
                        "2: Marked diminution in swing with obvious rigidity",
                        des4:
                        "3: stiff gait with arms held rigidly before the abdomen",
                        des5:
                        "4: stooped ,shuffling gait with propulsion and retro pulsion",
                        des6: "5: Not Ratable"),
                    SizedBox(
                      height: 20,
                    ),
                    MSA_scale_custom(
                        title: "Arm Dropping",
                        des:
                        "The patient and the examiner both raise their arms to shoulder height and let them fall to their sides. In a normal subject, a stout slap is heard as the arms hit the sides. In the patient with extreme Parkinson’s Syndrome, the arms fall very slowly",
                        des1: "0: Normal",
                        des2:
                        "1: Fall slowed slightly with lwess audible contact and little rebound",
                        des3: "2: Fall slowed. no rebound",
                        des4: "3: Marked slowing,no slap at all",
                        des5: "4: Arms fall as though against resistance",
                        des6: "5: Not Ratable"),
                    SizedBox(
                      height: 20,
                    ),
                    MSA_scale_custom(
                        title: "Shoulder Shaking",
                        des:
                        "The subject’s arms are bent at a right angle at the elbow and are taken one at a time by the examiner, who also grasps one hand and also clasps the other around the subject’s elbow. The subject’s upper arm is pushed to and fro, and the humerus is externally rotated. The degree of resistance from normal to extreme rigidity is scored as follows:",
                        des1: "0: Normal",
                        des2: "1: Slight stiffness and resistance",
                        des3:
                        "3: Marked rigidity with difficulty in passive movement",
                        des4:
                        "3: stiff gait with arms held rigidly before the abdomen",
                        des5:
                        "4: Extreme stiffness and rigidity with almost a frozen joint",
                        des6: "5: Not Ratable"),
                    SizedBox(
                      height: 20,
                    ),
                    MSA_scale_custom(
                        title: "Elbow rigidity",
                        des:
                        "The elbow joints are separately bent at right angles and passively extended and flexed, with the subject’s biceps observed and simultaneously palpated. The resistance to this procedure is rated.",
                        des1: "0: Normal,free fall",
                        des2: "1: Slight stiffness and resistance",
                        des3: "2: Moderate stiffness and resistance",
                        des4:
                        "3: Marked rigidity with difficulty in passive movement",
                        des5:
                        "4: Extreme stiffness and rigidity with almost a frozen joint",
                        des6: "5: Not Ratable"),
                    SizedBox(
                      height: 20,
                    ),
                    MSA_scale_custom(
                        title: "Wrist rigidity",
                        des:
                        "The wrist is held in one hand and the fingers held by the examiner’s other hand, with the wrist moved to extension, flexion, and ulnar and radial deviation, or the extended wrist is allowed to fall under its own weight, or the arm can be grasped above the wrist and shaken to and fro. A “1” score would be a hand that extends easily, falls loosely, or flaps easily upwards and downwards.",
                        des1: "0: Normal,free fall",
                        des2: "1: Slight stiffness and resistance",
                        des3: "2: Moderate stiffness and resistance",
                        des4:
                        "3: Marked rigidity with difficulty in passive movement",
                        des5:
                        "4: Extreme stiffness and rigidity with almost a frozen joint",
                        des6: "5: Not Ratable"),
                    SizedBox(
                      height: 20,
                    ),
                    MSA_scale_custom(
                        title: "Head Rotation",
                        des:
                        "The subject sits or stands and is told that the examiner will move his head from side to side, that it will not hurt, and that he should try and relax. (Questions about pain in the cervical area or difficulty in moving his head should be obtained to avoid causing any pain.) Clasp the subject’s head between the two hands with the fingers on the back of the neck. Gently rotate the head in a circular motion 3 times and evaluate the muscular resistance to this movement.",
                        des1: "0: Normal",
                        des2: "1: Slight resistance to movement",
                        des3:
                        "2: Resistance is apparent and the time of rotation is shortened",
                        des4: "3: Resistance is obvious and rotation is slowed",
                        des5:
                        "4: Head appears stiff and rotation is difficult to carry out",
                        des6: "5: Not Ratable"),
                    SizedBox(
                      height: 20,
                    ),
                    MSA_scale_custom(
                        title: "Glabella Tap",
                        des:
                        "The subject is told to open his eyes and not to blink. The glabella region is tapped at a steady, rapid speed. Note the number of times that the subject blinks in succession. Take care to stand behind the subject so that he does not observe the movement of the tapping finger. A full blink need not be observed; there may be a contraction of the infraorbital muscle producing a twitch each time a stimulus is delivered. Vary the speed of tapping to assure that the muscle contraction is related to the tap.",
                        des1: "0: 0 to 5 blinks",
                        des2: "1: 6 to 10 blinks",
                        des3: "2: 11 to 15 blinks",
                        des4: "3: 16 to 20 blinks",
                        des5: "4: 21 or more blinks",
                        des6: "5: Not Ratable"),
                    SizedBox(
                      height: 20,
                    ),
                    MSA_scale_custom(
                        title: "Tremor",
                        des:
                        "The subject is observed walking into the examining room and then is re-examined for this item with his arms extended at right angles to the body and the fingers spread out as far as possible.",
                        des1: "0: Normal",
                        des2:
                        "1: Mild finger tremor,obvious to sight and touch",
                        des4: "2: Persistant tremor of one or more limbs",
                        des3: "2: Tremor of hand or arm occuring spasmodically",
                        des5: "4: whole body tremor",
                        des6: "5: Not Ratable"),
                    SizedBox(
                      height: 20,
                    ),
                    MSA_scale_custom(
                        title: "Salivation",
                        des:
                        "The subject is observed while talking and then asked to open his mouth to elevate his tongue.",
                        des1: "0: Normal",
                        des2:
                        "1: Excess salivation so that drooling takes place if mouth is opened and tongue is raised",
                        des4:
                        "2: Excess salivation is present and might occasionally result in difficulty in speaking",
                        des3:
                        "3: Speaking with difficulty because of excess drooling",
                        des5: "4: Frank drooling",
                        des6: "5: Not Ratable"),
                    SizedBox(
                      height: 20,
                    ),
                    MSA_scale_custom(
                        title: "Akathisia",
                        des:
                        "The subject is observed for restlessness. If restlessness is noted, ask, “Do you feel restless or jittery inside; is it difficult to sit still?” Subjective response is not necessary for scoring, but subject report can help make the assessment.",
                        des1: "0: Normal",
                        des2:
                        "1: Mild restlessness observed, e.g., occasional jiggling of the foot occurs when the subject is seated",
                        des4:
                        '2: Moderate restlessness observed, e.g., on several occasions, the subject jiggles his foot, crosses and uncrosses his legs, or twists a part of the body',
                        des3:
                        '3: Restlessness is frequently observed, e.g., the subject’s foot or legs are moving most of the time',
                        des5:
                        '4:  Restlessness persistently observed, e.g., the subject cannot sit still, might get up and walk',
                        des6: "5: Not Ratable"),
                    SizedBox(
                      height: 15,
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
                        onPressed:((){setState((){sum_msa = sum_msa+0;});}) ,
                        child: Text(
                          'Total Score',
                          style: TextStyle(fontSize: 18.0, color: Colors.white),
                        ),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text(
                          "$sum_msa",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.redAccent),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 20,
                    ),

                    Container(
                      width: MediaQuery.of(context).size.width * 0.87,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.all(
                          Radius.circular(35.0),
                        ),
                      ),
                      child: TextButton(
                        onPressed: (() {
                          Navigator.pop(context);
                        }),
                        child: Text(
                          'Submit',
                          style: TextStyle(fontSize: 18.0, color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    GestureDetector(
                      onTap: ()=> printDocmsa(),
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
                  ],
                ),
              ),
            ],
          ),
        ));
  }
  Future<void> printDocmsa() async {
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
                pw.Center(child: pw.Text("MSA Scale",style: pw.TextStyle(fontWeight: pw.FontWeight.bold,fontSize: 30))),

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
                                pw.Text('Pateint Name',style: pw.TextStyle(fontWeight: pw.FontWeight.bold,fontSize: 20)),
                                pw.SizedBox(height: 5.0,),
                              ]
                          ),
                          pw.Column(
                            children: [
                              pw.SizedBox(height: 5.0,),
                              pw.Text('Pateint Name',style: pw.TextStyle(fontSize: 20)),
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
                                pw.Text('Rater Name',style: pw.TextStyle(fontWeight: pw.FontWeight.bold,fontSize: 20)),
                                pw.SizedBox(height: 5.0,),
                              ]
                          ),
                          pw.Column(
                            children: [
                              pw.SizedBox(height: 5.0,),
                              pw.Text('Rater Name',style: pw.TextStyle(fontSize: 20)),
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
                                pw.Text('Date',style: pw.TextStyle(fontWeight: pw.FontWeight.bold,fontSize: 20)),
                                pw.SizedBox(height: 5.0,),
                              ]
                          ),
                          pw.Column(
                            children: [
                              pw.SizedBox(height: 5.0,),
                              pw.Text(DateFormat('yyyy-MM-dd').format(DateTime.now()),style: pw.TextStyle(fontSize: 20)),
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
                                pw.Text('Total MSA Score',style: pw.TextStyle(fontWeight: pw.FontWeight.bold,fontSize: 20)),
                                pw.SizedBox(height: 5.0,),
                              ]
                          ),
                          pw.Column(
                            children: [
                              pw.SizedBox(height: 5.0,),
                              pw.Text('$sum_msa',style: pw.TextStyle(fontSize: 20)),
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
}
// the below class is created to avoid repetative code for the same container used in MSA scale
class MSA_scale_custom extends StatefulWidget {
  MSA_scale_custom(
      {required this.title,
        required this.des,
        required this.des1,
        required this.des2,
        required this.des3,
        required this.des4,
        required this.des5,
        required this.des6});

  final String title;
  final String des;
  final String des1;
  final String des2;
  final String des3;
  final String des4;
  final String des5;
  final String des6;
  @override
  State<MSA_scale_custom> createState() => _MSA_scale_customState();
}

class _MSA_scale_customState extends State<MSA_scale_custom> {
  double p = 0;
  double b = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 2),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        elevation: 10,
        shadowColor: Colors.grey,
        child: Container(
          width: 360,
          child: Column(
            children: [
              Container(
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          widget.title,
                          style: TextStyle(
                              fontSize: 25,
                              fontFamily: 'NotoSerif',
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                        thickness: 2,
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          widget.des,
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'NotoSerif',
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Slider(
                          min: 0.0,
                          max: 5.0,
                          divisions: 5,
                          value: b,
                          activeColor: Colors.redAccent,
                          label: b.round().toString(),
                          onChanged: (newValue) {
                            setState(() {
                              b = newValue;
                              sum_msa = sum_msa + b - p;
                              p = b;

                            });
                          }),
                      ListTile(
                        title: Text(
                          widget.des1,
                          style: TextStyle(
                              color: Colors.grey, fontStyle: FontStyle.italic),
                        ),
                      ),
                      ListTile(
                        title: Text(
                          widget.des2,
                          style: TextStyle(
                              color: Colors.grey, fontStyle: FontStyle.italic),
                        ),
                      ),
                      ListTile(
                        title: Text(
                          widget.des3,
                          style: TextStyle(
                              color: Colors.grey, fontStyle: FontStyle.italic),
                        ),
                      ),
                      ListTile(
                        title: Text(
                          widget.des4,
                          style: TextStyle(
                              color: Colors.grey, fontStyle: FontStyle.italic),
                        ),
                      ),
                      ListTile(
                        title: Text(
                          widget.des5,
                          style: TextStyle(
                              color: Colors.grey, fontStyle: FontStyle.italic),
                        ),
                      ),
                      ListTile(
                        title: Text(
                          widget.des6,
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
                      Text(
                        'Score = $b',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      )
                    ],
                  )),
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

double aims_sum = 0;
// the below class is created to avoid repetitive code for the same container used in AIIMS scale
class AIMS_scale_custom extends StatefulWidget {
  AIMS_scale_custom({required this.title, required this.des});

  final String title;
  final String des;

  @override
  State<AIMS_scale_custom> createState() => _AIMS_scale_customState();
}

class _AIMS_scale_customState extends State<AIMS_scale_custom> {
  double slider = 0;
  double slider3 = 0;
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
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(widget.title,
                        style: TextStyle(fontSize: 25, fontFamily: 'NotoSerif'),
                        textAlign: TextAlign.center),
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 2,
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      widget.des,
                      style: TextStyle(fontFamily: 'NotoSerif', fontSize: 18),
                      textAlign: TextAlign.justify,
                    ),
                  ),

                  Slider(
                      min: 0.0,
                      max: 4.0,
                      divisions: 4,
                      value: slider,
                      activeColor: Colors.redAccent,
                      label: slider.round().toString(),
                      onChanged: (newValue) {
                        setState(() {
                          slider = newValue;
                          aims_sum = aims_sum + slider - slider3;
                          slider3 = slider;
                        });
                      }),
                  Column(
                    children: [
                      ListTile(
                        title: Text(
                          '0: None',
                          style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                        ),
                      ),
                      ListTile(
                        title: Text(
                          '1: Minimal',
                          style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                        ),
                      ),
                      ListTile(
                        title: Text(
                          '2: Mild',
                          style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                        ),
                      ),
                      ListTile(
                        title: Text(
                          '3: Moderate',
                          style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                        ),
                      ),
                      ListTile(
                        title: Text(
                          '4:  Severe',
                          style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
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
                        'Score = $slider',
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
// the below class is for the AIIMS scale 
class Aims_page extends StatefulWidget {
  @override
  State<Aims_page> createState() => _Aims_pageState();
}

class _Aims_pageState extends State<Aims_page> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AIMS Scale"),
        backgroundColor: Colors.redAccent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(30.0),
          child: Column(
            children: [
              Text(
                "Facial and Oral Movements",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              AIMS_scale_custom(
                  title: "Muscles of Facial Expression",
                  des:
                  "e.g. movements of forehead, eyebrows, periorbital area, cheeks, including frowning, blinking, smiling, grimacing"),
              SizedBox(
                height: 25,
              ),
              AIMS_scale_custom(
                  title: "Lips and Perioral Area",
                  des: "e.g. puckering,pouting,smacking"),
              SizedBox(
                height: 25,
              ),
              AIMS_scale_custom(
                  title: "Jaw",
                  des:
                  "e.g. biting, clenching, chewing, mouth opening, lateral movement"),
              SizedBox(
                height: 25,
              ),
              AIMS_scale_custom(
                  title: "Tongue",
                  des:
                  "Rate only increases in movement both in and out of mouth.NOT inability to sustain movement.  Darting in and out of mouth"),
              SizedBox(
                height: 25,
              ),
              Text(
                "Extremity Movements",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              AIMS_scale_custom(
                  title: "Upper(arms,wrists,hands,fingers",
                  des:
                  "Include choreic movements (i.e., rapid, objectively purposeless, irregular, spontaneous) athetoid movements (i.e., slow, irregular,    complex, serpentine).  DO NOT INCLUDE TREMOR (i.e., repetitive, regular, rhythmic)"),
              SizedBox(
                height: 25,
              ),
              AIMS_scale_custom(
                  title: "Lower(legs,knees,ankle,toes)",
                  des:
                  "e.g., lateral knee movement, foot tapping, heel dropping, foot squirming, inversion and eversion of foot"),
              SizedBox(
                height: 25,
              ),
              Text(
                "Trunk Movements",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              AIMS_scale_custom(
                  title: "Neck,shoulders,hips",
                  des:
                  "Neck, shoulders, hips e.g., rocking, twisting, squirming, pelvic  gyrations"),
              SizedBox(
                height: 25,
              ),
              Text(
                "Global Judgements",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              AIMS_scale_custom(
                  title: "Severity of abnormal movements overall", des: " "),
              SizedBox(
                height: 25,
              ),
              AIMS_scale_custom(
                  title: "Incapacitation due to abnormal movements", des: " "),
              SizedBox(
                height: 25,
              ),
              AIMS_scale_custom(title: "Pateint's awareness of abnormal movements", des: "Rate only Pateint's report"),
              SizedBox(
                height: 25,
              ),
              Text(
                "Dental Status",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                textAlign: TextAlign.center,
              ),
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
              child: SizedBox(
                width: 360,
                child: Column(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Are dentures usually worn?",
                              style: TextStyle(fontSize: 25, fontFamily: 'NotoSerif'),
                              textAlign: TextAlign.center),
                        ),

                        Divider(
                          color: Colors.grey,
                          thickness: 2,
                        ),
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              Expanded(
                                  child: ElevatedButton(
                                    onPressed: (() {
                                      setState((){
                                         dent_2 = "Yes";
                                      });
                                    }),
                                    style: ElevatedButton.styleFrom(primary: Colors.red),
                                    child: Padding(
                                      padding: EdgeInsets.all(11.0),
                                      child: Text(
                                        "YES",
                                        style: TextStyle(fontSize: 25),
                                      ),
                                    ),
                                  )),
                              SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                  child: ElevatedButton(
                                    onPressed: ((){
                                          setState((){
                                            dent_2 = "No";
                                          });
                                    }),
                                    style: ElevatedButton.styleFrom(primary: Colors.red),
                                    child: Padding(
                                      padding: EdgeInsets.all(11.0),
                                      child: Text("No", style: TextStyle(fontSize: 25)),
                                    ),
                                  )),
                            ],
                          ),
                        ),
                        Divider(
                          color: Colors.grey,
                          thickness: 2,
                        ),
                        Card(
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "$dent_2",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.redAccent),
                            ),
                          ),
                        ),
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
              Container(decoration: BoxDecoration(
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
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text("Edentia?",
                                  style: TextStyle(fontSize: 25, fontFamily: 'NotoSerif'),
                                  textAlign: TextAlign.center),
                            ),
                            Divider(
                              color: Colors.grey,
                              thickness: 2,
                            ),
                            Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Row(
                                children: [
                                  Expanded(
                                      child: ElevatedButton(
                                        onPressed: (() {
                                          setState((){
                                            dent_3 = "Yes";
                                          });
                                        }),
                                        style: ElevatedButton.styleFrom(primary: Colors.red),
                                        child: Padding(
                                          padding: EdgeInsets.all(11.0),
                                          child: Text(
                                            "YES",
                                            style: TextStyle(fontSize: 25),
                                          ),
                                        ),
                                      )),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                      child: ElevatedButton(
                                        onPressed: ((){
                                          setState((){
                                            dent_3 = "No";
                                          });
                                        }),
                                        style: ElevatedButton.styleFrom(primary: Colors.red),
                                        child: Padding(
                                          padding: EdgeInsets.all(11.0),
                                          child: Text("No", style: TextStyle(fontSize: 25)),
                                        ),
                                      )),
                                ],
                              ),
                            ),
                            Divider(
                              color: Colors.grey,
                              thickness: 2,
                            ),

                            Card(
                              child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Text(
                                  "$dent_3",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.redAccent),
                                ),
                              ),
                            ),
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
              Container(decoration: BoxDecoration(
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
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text("Do movements disappear in sleep? ",
                                  style: TextStyle(fontSize: 25, fontFamily: 'NotoSerif'),
                                  textAlign: TextAlign.center),
                            ),

                            Divider(
                              color: Colors.grey,
                              thickness: 2,
                            ),
                            Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Row(
                                children: [
                                  Expanded(
                                      child: ElevatedButton(
                                        onPressed: (() {
                                          setState((){
                                            dent_4 = "Yes";
                                          });
                                        }),
                                        style: ElevatedButton.styleFrom(primary: Colors.red),
                                        child: Padding(
                                          padding: EdgeInsets.all(11.0),
                                          child: Text(
                                            "YES",
                                            style: TextStyle(fontSize: 25),
                                          ),
                                        ),
                                      )),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                      child: ElevatedButton(
                                        onPressed: ((){
                                          setState((){
                                            dent_4 = "No";
                                          });
                                        }),
                                        style: ElevatedButton.styleFrom(primary: Colors.red),
                                        child: Padding(
                                          padding: EdgeInsets.all(11.0),
                                          child: Text("No", style: TextStyle(fontSize: 25)),
                                        ),
                                      )),
                                ],
                              ),
                            ),
                            Divider(
                              color: Colors.grey,
                              thickness: 2,
                            ),
                            Card(
                              child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Text(
                                  "$dent_4",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.redAccent),
                                ),
                              ),
                            ),
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
              Container(decoration: BoxDecoration(
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
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text("Current Problems with teeth and/or dentures?",
                                  style: TextStyle(fontSize: 25, fontFamily: 'NotoSerif'),
                                  textAlign: TextAlign.center),
                            ),
                            Divider(
                              color: Colors.grey,
                              thickness: 2,
                            ),
                            Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Row(
                                children: [
                                  Expanded(
                                      child: ElevatedButton(
                                        onPressed: (() {
                                          setState((){
                                            dent_1 = "Yes";
                                          });
                                        }),
                                        style: ElevatedButton.styleFrom(primary: Colors.red),
                                        child: Padding(
                                          padding: EdgeInsets.all(11.0),
                                          child: Text(
                                            "YES",
                                            style: TextStyle(fontSize: 25),
                                          ),
                                        ),
                                      )),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                      child: ElevatedButton(
                                        onPressed: ((){
                                          setState((){
                                            dent_1 = "No";
                                          });
                                        }),
                                        style: ElevatedButton.styleFrom(primary: Colors.red),
                                        child: Padding(
                                          padding: EdgeInsets.all(11.0),
                                          child: Text("No", style: TextStyle(fontSize: 25)),
                                        ),
                                      )),
                                ],
                              ),
                            ),
                            Divider(
                              color: Colors.grey,
                              thickness: 2,
                            ),
                            Card(
                              child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Text(
                                  "$dent_1",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.redAccent),
                                ),
                              ),
                            ),
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
                  onPressed:((){setState((){aims_sum = aims_sum +0;});}) ,
                  child: Text(
                    'Total Score',
                    style: TextStyle(fontSize: 18.0, color: Colors.white),
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    "$aims_sum",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.redAccent),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),

              Container(
                width: MediaQuery.of(context).size.width * 0.87,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.all(
                    Radius.circular(35.0),
                  ),
                ),
                child: TextButton(
                  onPressed: (() {
                    Navigator.pop(context);
                  }),
                  child: Text(
                    'Submit',
                    style: TextStyle(fontSize: 18.0, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),

              GestureDetector(
                onTap: ()=> printDocaims(),
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
            ],
          ),
        ),
      ),
    );
  }
}
Future<void> printDocaims() async {
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
              pw.Center(child: pw.Text("AIMS Scale",style: pw.TextStyle(fontWeight: pw.FontWeight.bold,fontSize: 30))),

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
                              pw.Text('Pateint Name',style: pw.TextStyle(fontWeight: pw.FontWeight.bold,fontSize: 20)),
                              pw.SizedBox(height: 5.0,),
                            ]
                        ),
                        pw.Column(
                          children: [
                            pw.SizedBox(height: 5.0,),
                            pw.Text('Pateint Name',style: pw.TextStyle(fontSize: 20)),
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
                              pw.Text('Rater Name',style: pw.TextStyle(fontWeight: pw.FontWeight.bold,fontSize: 20)),
                              pw.SizedBox(height: 5.0,),
                            ]
                        ),
                        pw.Column(
                          children: [
                            pw.SizedBox(height: 5.0,),
                            pw.Text('Rater Name',style: pw.TextStyle(fontSize: 20)),
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
                              pw.Text('Date',style: pw.TextStyle(fontWeight: pw.FontWeight.bold,fontSize: 20)),
                              pw.SizedBox(height: 5.0,),
                            ]
                        ),
                        pw.Column(
                          children: [
                            pw.SizedBox(height: 5.0,),
                            pw.Text(DateFormat('yyyy-MM-dd').format(DateTime.now()),style: pw.TextStyle(fontSize: 20)),
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
                              pw.Text('Total AIMS Score',style: pw.TextStyle(fontWeight: pw.FontWeight.bold,fontSize: 20)),
                              pw.SizedBox(height: 5.0,),
                            ]
                        ),
                        pw.Column(
                          children: [
                            pw.SizedBox(height: 5.0,),
                            pw.Text('$aims_sum',style: pw.TextStyle(fontSize: 20)),
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
                              pw.Text('Current problems witht teeth and/or dentures',style: pw.TextStyle(fontWeight: pw.FontWeight.bold,fontSize: 20)),
                              pw.SizedBox(height: 5.0,),
                            ]
                        ),
                        pw.Column(
                          children: [
                            pw.SizedBox(height: 5.0,),
                            pw.Text('$dent_1',style: pw.TextStyle(fontSize: 20)),
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
                              pw.Text('Are Dentures usually worn',style: pw.TextStyle(fontWeight: pw.FontWeight.bold,fontSize: 20)),
                              pw.SizedBox(height: 5.0,),
                            ]
                        ),
                        pw.Column(
                          children: [
                            pw.SizedBox(height: 5.0,),
                            pw.Text('$dent_2',style: pw.TextStyle(fontSize: 20)),
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
                              pw.Text('Edentia',style: pw.TextStyle(fontWeight: pw.FontWeight.bold,fontSize: 20)),
                              pw.SizedBox(height: 5.0,),
                            ]
                        ),
                        pw.Column(
                          children: [
                            pw.SizedBox(height: 5.0,),
                            pw.Text('$dent_3',style: pw.TextStyle(fontSize: 20)),
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
                              pw.Text('Do movements disappear in sleep',style: pw.TextStyle(fontWeight: pw.FontWeight.bold,fontSize: 20)),
                              pw.SizedBox(height: 5.0,),
                            ]
                        ),
                        pw.Column(
                          children: [
                            pw.SizedBox(height: 5.0,),
                            pw.Text('$dent_4',style: pw.TextStyle(fontSize: 20)),
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

class scale extends StatefulWidget {
  // scale({Key? key}) : super(key: key);

  @override
  State<scale> createState() => _scaleState();
}
class _scaleState extends State<scale> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Questionnaire'),
          backgroundColor: Colors.red,
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Container(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        "Parkinsonism, Akathisia, Dystonia and Dyskinesia. In this questionnaire, take into account the verbal report of the patient on the following:",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    ListTile(
                        title: Text(
                          "The duration of the symptom during the day",
                          style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic,color: Colors.grey),
                          textAlign: TextAlign.justify,
                        )),
                    ListTile(
                        title: Text(
                            "The number of days where the symptom was present during the last week;",
                            style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic,color: Colors.grey))),
                    ListTile(
                        title: Text(
                            "The evaluation of the intensity of the symptom by the patient.",
                            style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic,color: Colors.grey))),
                    SizedBox(height: 20,),
                    ListTile(
                        title: Text(
                            "Enquire into the status of each symptom and rate accordingly",
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,)),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Esrs_scale1_custom(
                title:
                "Impression of slowness or weakness ,difficulty in carrying out routine tasks"),
            SizedBox(
              height: 20,
            ),
            Esrs_scale1_custom(title: "Difficulty walking or with balance"),
            SizedBox(
              height: 20,
            ),
            Esrs_scale1_custom(title: "Stiffness,stiff posture"),
            SizedBox(
              height: 20,
            ),
            Esrs_scale1_custom(title: "Restless,Nervous,unable to keep still"),
            SizedBox(
              height: 20,
            ),
            Esrs_scale1_custom(title: "Tremors,Shaking"),
            SizedBox(
              height: 20,
            ),
            Esrs_scale1_custom(
                title: "Oculogyric crisis,Abnormal sustained posture"),
            SizedBox(
              height: 20,
            ),
            Esrs_scale1_custom(
                title: "Abnormal involuntary movements(dyskensia)of tongue,jaw,lips,face,extremities or trunk"),
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
                onPressed:((){setState((){Sum_esrs_scale1 = Sum_esrs_scale1+0;});}) ,
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
                  "$Sum_esrs_scale1",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.redAccent),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: (() {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Esrs_scale2()));
                Sum_esrs_scale2 = 0;
              }),
              style: ElevatedButton.styleFrom(primary: Colors.red),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Next",style: TextStyle(fontSize: 20),),
              ),
            ),
          ]),
        ));
  }
}
class Esrs_scale1_custom extends StatefulWidget {

  Esrs_scale1_custom({required this.title});
  final String title;

  @override
  State<Esrs_scale1_custom> createState() => _Esrs_scale1_customState();
}

class _Esrs_scale1_customState extends State<Esrs_scale1_custom> {
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
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 2,
                  ),
                  Slider(
                      min: 0.0,
                      max: 3.0,
                      divisions: 3,
                      value: y,
                      activeColor: Colors.red,
                      label: y.round().toString(),
                      onChanged: (newValue) {
                        setState(() {
                          y = newValue;
                          Sum_esrs_scale1 = Sum_esrs_scale1 + y - x;
                          x = y;
                        });
                      }),

                  Column(
                    children: [
                      ListTile(
                        title: Text(
                          '0 = Absent',
                          style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                        ),
                      ),
                      ListTile(
                        title: Text(
                          '1 = Mild ',
                          style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                        ),
                      ),
                      ListTile(
                        title: Text(
                          '2 = Moderate ',
                          style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                        ),
                      ),
                      ListTile(
                        title: Text(
                          '3 = Severe',
                          style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
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

class Esrs_scale2 extends StatefulWidget {
  // Esrs_scale2({Key? key});

  @override
  State<Esrs_scale2> createState() => _Esrs_scale2State();
}

class _Esrs_scale2State extends State<Esrs_scale2> {
  double slider1Value = 0.0;
  double slider2Value = 0.0;
  double slider3Value = 0.0;
  double slider4Value = 0.0;
  double slider5Value = 0.0;
  double slider6Value = 0.0;
  double slider7Value = 0.0;
  double slider8Value = 0.0;
  double slider9Value = 0.0;
  double slider10Value = 0.0;
  double slider11Value = 0.0;
  double slider12Value = 0.0;
  double slider13Value = 0.0;
  double slider14Value = 0.0;
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
                  'Parkinsonism and Akathisia',
                  style: TextStyle(fontSize: 25, fontFamily: 'NotoSerif'),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Container(
                child: Text(
                  'Items based on physical examination for parkinsons',
                  style: TextStyle(fontSize: 15,),
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
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'TREMOR',
                              style: TextStyle(fontSize: 18, fontFamily: "Notoserif"),
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
                              value: slider1Value,
                              activeColor: Colors.red,
                              label: slider1Value.round().toString(),
                              onChanged: (newValue) {
                                setState(() {
                                  slider1Value = newValue;
                                  Sum_esrs_scale2 = Sum_esrs_scale2 +
                                      slider1Value -
                                      slider2Value;
                                  slider2Value = slider1Value;
                                });
                              }),
                          Column(
                            children: [
                              ListTile(
                                title: Text(
                                  '0 = None',
                                  style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                ),
                              ),
                              ListTile(
                                  title: Text(
                                    " 1 = Borderline",
                                    style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                  )),
                              ListTile(
                                  title: Text(
                                    '2 = Small Ampliitude',
                                    style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                  )),
                              ListTile(
                                  title: Text(
                                    '3 = Moderate Amplitude',
                                    style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                  )),
                              ListTile(
                                  title: Text(
                                    '4 =  Large Amplitude',
                                    style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                  )),
                              SizedBox(
                                height: 20,
                              ),
                              Divider(
                                color: Colors.grey,
                                thickness: 2,
                              ),
                              Text('Score = $slider1Value',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20))
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
            Container(decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 2),
              borderRadius: BorderRadius.all(Radius.circular(10)),),
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
                            child: Text(
                              'Bradykinesia',
                              style: TextStyle(
                                  fontSize: 18, fontFamily: 'NotoSerif'),
                            ),
                          ),
                          Divider(
                            color: Colors.grey,
                            thickness: 2,
                          ),
                          Slider(
                              min: 0.0,
                              max: 6.0,
                              divisions: 6,
                              value: slider3Value,
                              activeColor: Colors.red,
                              label: slider3Value.round().toString(),
                              onChanged: (newValue) {
                                setState(() {
                                  slider3Value = newValue;
                                  Sum_esrs_scale2 = Sum_esrs_scale2 +
                                      slider3Value -
                                      slider4Value;
                                  slider4Value = slider3Value;
                                });
                              }),
                          Column(
                            children: [
                              ListTile(
                                title: Text(
                                  '0 = Normal',
                                  style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  ' 1 = Global impression of slowness',
                                  style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '2 = Definite slowness',
                                  style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '3 = Very Mild Difficulty',
                                  style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '4 =  Mild Difficulty',
                                  style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '5 =  Difficulty in starting or dtopping',
                                  style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '6 =  Rare voluntary movement',
                                  style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                ),
                              ),Divider(
                                color: Colors.grey,
                                thickness: 2,
                              ),

                              Text(
                                'Score = $slider3Value',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),SizedBox(
                                height: 15,
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
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
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Gait & Posture',
                              style: TextStyle(
                                  fontSize: 18, fontFamily: 'NotoSerif'),
                            ),
                          ),Divider(
                            color: Colors.grey,
                            thickness: 2,
                          ),
                          Slider(
                              min: 0.0,
                              max: 6.0,
                              divisions: 6,
                              value: slider5Value,
                              activeColor: Colors.red,
                              label: slider5Value.round().toString(),
                              onChanged: (newValue) {
                                setState(() {
                                  slider5Value = newValue;
                                  Sum_esrs_scale2 = Sum_esrs_scale2 +
                                      slider5Value -
                                      slider6Value;
                                  slider6Value = slider5Value;
                                });
                              }),
                          Column(
                            children: [
                              ListTile(
                                title: Text(
                                  '0 = Normal',
                                  style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  ' 1 = Mild decrease',
                                  style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '2 = Moderate decrease',
                                  style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '3 = No movement',
                                  style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '4 =  Stiff posture',
                                  style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '5 =  More marked fascination',
                                  style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '6 =  Triple flexion',
                                  style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),Divider(
                                color: Colors.grey,
                                thickness: 2,
                              ),
                              Text(
                                'Score = $slider5Value',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),SizedBox(
                                height: 15,
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
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
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Postural Stability',
                              style: TextStyle(
                                  fontSize: 18, fontFamily: 'NotoSerif'),
                            ),
                          ),Divider(
                            color: Colors.grey,
                            thickness: 2,
                          ),
                          Slider(
                              min: 0.0,
                              max: 6.0,
                              divisions: 3,
                              value: slider7Value,
                              activeColor: Colors.red,
                              label: slider7Value.round().toString(),
                              onChanged: (newValue) {
                                setState(() {
                                  slider7Value = newValue;
                                  Sum_esrs_scale2 = Sum_esrs_scale2 +
                                      slider7Value -
                                      slider8Value;
                                  slider8Value = slider7Value;
                                });
                              }),
                          Column(
                            children: [
                              ListTile(
                                title: Text(
                                  '0 = Normal',
                                  style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '1 = Hesitation when pushed',
                                  style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '2 = Retropulsion',
                                  style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '3 = Exagerrated',
                                  style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '4 =  Absence of postural response',
                                  style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '5 =  Unstable while standing',
                                  style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '6 =  Unable to stand withou assistance',
                                  style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),Divider(
                                color: Colors.grey,
                                thickness: 2,
                              ),
                              Text(
                                'Score = $slider7Value',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),SizedBox(
                                height: 15,
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
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
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Rigidity',
                              style: TextStyle(
                                  fontSize: 18, fontFamily: 'NotoSerif'),
                            ),
                          ),Divider(
                            color: Colors.grey,
                            thickness: 2,
                          ),
                          Slider(
                              min: 0.0,
                              max: 6.0,
                              divisions: 6,
                              value: slider9Value,
                              activeColor: Colors.red,
                              label: slider9Value.round().toString(),
                              onChanged: (newValue) {
                                setState(() {
                                  slider9Value = newValue;
                                  Sum_esrs_scale2 = Sum_esrs_scale2 +
                                      slider9Value -
                                      slider10Value;
                                  slider10Value = slider9Value;
                                });
                              }),
                          Column(
                            children: [
                              ListTile(
                                title: Text(
                                  '0 = Normal',
                                  style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '1 = Very mild',
                                  style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                ),
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
                                  '4 =  Moderately severe',
                                  style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '5 =  Severe',
                                  style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '6 = Extremely severe',
                                  style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),Divider(
                                color: Colors.grey,
                                thickness: 2,
                              ),
                              Text(
                                'Score = $slider9Value',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),SizedBox(
                                height: 15,
                              ),
                            ],
                          )
                        ],
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
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Items based on overall  observation during examination for Parkinsons',
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(
              height: 30,
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
                                  'Expressive Automatic Movements',
                                  style: TextStyle(
                                      fontSize: 18, fontFamily: 'NotoSerif'),
                                ),
                              ),Divider(
                                color: Colors.grey,
                                thickness: 2,
                              ),
                              Slider(
                                  min: 0.0,
                                  max: 6.0,
                                  divisions: 6,
                                  value: slider11Value,
                                  activeColor: Colors.red,
                                  label: slider11Value.round().toString(),
                                  onChanged: (newValue) {
                                    setState(() {
                                      slider11Value = newValue;
                                      Sum_esrs_scale2 = Sum_esrs_scale2 +
                                          slider11Value -
                                          slider12Value;
                                      slider12Value = slider11Value;
                                    });
                                  }),
                              Container(
                                  child: Column(
                                    children: [
                                      ListTile(
                                        title: Text(
                                          '0 = Normal',
                                          style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                        ),
                                      ),
                                      ListTile(
                                        title: Text(
                                          ' 1 = Very mild',
                                          style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                        ),
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
                                          '6 = Extremely severe',
                                          style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),Divider(
                                        color: Colors.grey,
                                        thickness: 2,
                                      ),
                                      Text(
                                        'Score = $slider11Value',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold, fontSize: 20),
                                      ),SizedBox(
                                        height: 15,
                                      ),
                                    ],
                                  ))
                            ],
                          )),
                    ],
                  ),
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
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Akathisia',
                              style: TextStyle(
                                  fontSize: 18, fontFamily: 'NotoSerif'),
                            ),
                          ),Divider(
                            color: Colors.grey,
                            thickness: 2,
                          ),
                          Slider(
                              min: 0.0,
                              max: 6.0,
                              divisions: 6,
                              value: slider13Value,
                              activeColor: Colors.red,
                              label: slider13Value.round().toString(),
                              onChanged: (newValue) {
                                setState(() {
                                  slider13Value = newValue;
                                  Sum_esrs_scale2 = Sum_esrs_scale2 +
                                      slider13Value -
                                      slider14Value;
                                  slider14Value = slider13Value;
                                });
                              }),
                          Column(
                            children: [
                              ListTile(
                                title: Text(
                                  '0 = Absent',
                                  style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '1 = Looks restless',
                                  style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '2 = Needs to move',
                                  style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '3 = Often needs to move one extremity',
                                  style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '4 =  Moves one extremity constantly',
                                  style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '5 = Unable to sit down',
                                  style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '6 = Moves constantly',
                                  style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),Divider(
                                color: Colors.grey,
                                thickness: 2,
                              ),
                              Text(
                                'Score = $slider13Value',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),SizedBox(
                                height: 15,
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
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
                  "$Sum_esrs_scale2",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.red),
                ),
              ),
            ),
            SizedBox(
              height: 10,
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
                                  builder: (context) => Esrs_scale3()));
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