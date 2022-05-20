import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       theme: ThemeData(
       primarySwatch: Colors.orange,
      ),
      
      home: const MyHomePage(title: 'Jamie Lannister'),
      
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin{
  

  @override
  Widget build(BuildContext context) {
    TabController _TabController=TabController(length: 3, vsync:this);
  
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image Slider",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height*0.50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30)
              ),
              color: Colors.orange
            ),
            child: 
            
            
            Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    
                    Padding(
                      padding: const EdgeInsets.only(left: 40,top: 50),
                      child: Icon(Icons.menu,
                      size: 50,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 40,top: 50),
                      child: Icon(Icons.account_box_rounded,
                      size: 50,),
                    ),
                    //SizedBox(height: 300,)
                  ],
                      
                ),
               
                Padding(
                  padding: const EdgeInsets.only(bottom: 50),
                  child: Text(" Where would you like to go ?",style: TextStyle(color: Colors.white,fontSize: 40),),
                ),
              ],
              ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*0.06,
                color: Colors.white,
                child: TabBar( labelColor: Colors.black,controller: _TabController,tabs: [Tab(text: "Popular",),
                Tab(text: "Recomended",),
                Tab(text: "Cost-effect",),
               ]
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*0.30,
                color: Color.fromARGB(255, 247, 246, 246),
                child: TabBarView( controller: _TabController,children: [
                Image.asset("assets/images/loktak_lake.jpg"),
                Image.asset("assets/images/lotus_tample.jpg"),
                Image.asset("assets/images/red_fort.jpg"),
                ],),

              )
             
             
             
         
        ],


      )
    );
  }
}

