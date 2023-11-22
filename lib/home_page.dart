import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List nameList=[
    "fahim",
    "sakib",
    "musi",
    "miraj",
    "ridoy",
    "rabbi",
    "akash",
    "fahim",
    "sakib",
    "musi",
    "miraj",
    "ridoy",
    "rabbi",
    "akash",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("listview",style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 25,
        ),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        //reverse: true,
        //scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          itemCount: nameList.length,
          itemBuilder: (context,i){
            return Padding(
                padding: EdgeInsets.all(15),
            child: SizedBox(
            height: 60,
            child: ListTile(
            tileColor: Colors.greenAccent[400],
            leading: Text('${nameList[i]}'),
            subtitle: Icon(Icons.favorite,color: Colors.red,size: 50,),
            ),
            ),
            );
    }
    ),
    );
  }

  }
