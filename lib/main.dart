import 'package:flutter/material.dart';

void main() {
  runApp( Home());
}



class Home extends StatelessWidget {
// ignore: prefer_typing_uninitialized_variables
var orientation, size,height,width;


@override
Widget build(BuildContext context) {
	
	// getting the orientation 
	orientation = MediaQuery.of(context).orientation;
	
	//getting the screen size
	size = MediaQuery.of(context).size;
	height = size.height;
	width = size.width;

	return MaterialApp(
    debugShowCheckedModeBanner: false,
      home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Media Query"),
        backgroundColor: const Color.fromARGB(255, 99, 147, 185),
      ),
  
      // checking the orientation
      body: orientation == Orientation.portrait?Center(
        child: Container(
          color: Color.fromARGB(255, 2, 78, 139),
          height: height*0.4,
          width: width*0.4,
        ),
      ):Center(
        child: Container(
          height: height*0.3,
          width: width*0.3,
          color: const Color.fromARGB(255, 111, 139, 161),
        ),
      ),
      ),
    );
}
}
