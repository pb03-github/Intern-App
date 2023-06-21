import 'package:flutter/material.dart';
import 'deatil.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: const Center(child: Text('Pateints List')),
        backgroundColor: Colors.red,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search))
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              pateint(),
              pateint(),
              pateint(),
              pateint(),
              pateint(),
              pateint(),
              pateint(),
              pateint(),
              pateint(),
              pateint(),],

          ),
        ),
      ),


    );
  }
}

class pateint extends StatelessWidget {
  const pateint({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => SecondRoute() ));
      },
      child: Card(
        color: Colors.white,
        elevation: 4,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            ListTile(
              leading: CircleAvatar(backgroundColor: Colors.redAccent,child: Icon(Icons.man,color: Colors.white,),),
              title: Text('Pateint ID',style: TextStyle(color: Colors.grey)),
              subtitle: Text('Pateint Name',style: TextStyle(color: Colors.grey,fontSize: 17)),
            ),
          ],
        ),
      ),
    );
  }
}

