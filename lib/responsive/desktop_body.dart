import 'package:flutter/material.dart';

class MyDesktopBody extends StatelessWidget {
  const MyDesktopBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[200],

      appBar: AppBar(
        title: Text("D E S K T O P"),
        backgroundColor: Colors.green,
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [

            // First Column
            Expanded(
              child: Column(
                children: [

                  //~~Youtube Layout for Mobile~~
                  // Youtube Video
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AspectRatio(
                      aspectRatio: 16/9,
                      child: Container(
                        height: 250,
                        color: Colors.green[400],
                      ),
                    ),
                  ),

                  // Comment section & Recommended videos
                  Expanded(
                    child: ListView.builder(
                        itemCount: 8,
                        itemBuilder: (context, index){
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(color: Colors.green[300],
                              height: 120,
                            ),
                          );
                        }),
                  )
                ],
              ),
            ),

            // Second Column
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AspectRatio(
                aspectRatio: 1/3,
                child: Container(
                  color: Colors.green[300],
                  width : 250,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
