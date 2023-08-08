import 'dart:async';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  StreamController<int> streamController=StreamController<int>();
  int counter=0;
  @override
  Widget build(BuildContext context) {
    print("rebuild");
    return Scaffold(
      appBar: AppBar(title: Text("Stream"),),
      body:Column(children: [
        Center(child:

        StreamBuilder(
          stream: streamController.stream,
            builder: (context,snapshot)
            {
              if(snapshot.hasData)
              {

                return Text(counter.toString());
              }

              else
              {

                return Text("0");
              }



            },




        ),

        ),
      ],
    ),
      floatingActionButton: FloatingActionButton(onPressed: () {

        streamController.sink.add(counter++);

      },
        child: Icon(Icons.add),

      ),

    );
  }
}
