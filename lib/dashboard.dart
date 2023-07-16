import "package:flutter/material.dart";
import 'dart:async';

class DashboardView extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("AMIKLMS"),
        titleSpacing: 00.0,
        centerTitle: true,
        toolbarHeight: 60.2,
        toolbarOpacity: 0.8,
        elevation: 0.00,
        backgroundColor: Color.fromARGB(199, 91, 140, 239),
      ),
      body: Container(

          constraints: BoxConstraints.expand(),
          decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("assets/images/bg.png"),
          fit: BoxFit.cover)
          ),

          padding: const EdgeInsets.all(32.0),
          child: Center(
            child: GridView.count(
              crossAxisCount: 2,
              children: <Widget>[
                Card(
                  child: Container(
                    height: 400,
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                      children: <Widget>[
                        Image.asset("images/kehadiran.png",
                        height: 70,
                        width: 55,),
                        Text('Kehadiran', style: TextStyle(
                        color: Color.fromARGB(198, 9, 51, 133),
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),)
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    padding: EdgeInsets.all(32.0),
                    child: Column(
                      children: <Widget>[
                        Image.asset("images/tugas.png",
                        height: 70,
                        width: 55,
                        ),
                        Text('Tugas', style: TextStyle(
                        color: Color.fromARGB(198, 9, 51, 133),
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),)
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    padding: EdgeInsets.all(32.0),
                    child: Column(
                      children: <Widget>[
                        Image.asset("images/pustaka.png",
                        height: 70,
                        width: 55,),
                        Text('Pustaka', style: TextStyle(
                        color: Color.fromARGB(198, 9, 51, 133),
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),)
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                      children: <Widget>[
                        Image.asset("images/material.png",
                        height: 70,
                        width: 55,),
                        Text('Material', style: TextStyle(
                        color: Color.fromARGB(198, 9, 51, 133),
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),)
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),

        bottomNavigationBar: BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.task),
          label: 'Tugas',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.help_center),
          label: 'Bantuan',
        ),
      ],
    ),
    );
  }
}

// function to trigger the build process
void dashboard() {
runApp(MyApp()); //MaterialApp
}

// ignore: non_constant_identifier_names
MaterialApp MyApp() {
return MaterialApp(
	home: Scaffold(
    // resizeToAvoidBottomInset: false,
	appBar: AppBar(
		title: const Text("AMIKLMS"),
		titleSpacing: 00.0,
		centerTitle: true,
		toolbarHeight: 60.2,
		toolbarOpacity: 0.8,
		elevation: 0.00,
		backgroundColor: Color.fromARGB(199, 91, 140, 239),
	), //AppBar
	body: Container(


        constraints: BoxConstraints.expand(),
        decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage("assets/images/bg.png"),
        fit: BoxFit.cover)
        ),

        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: GridView.count(
            crossAxisCount: 2,
            children: <Widget>[
              Card(
                child: Container(
                  height: 400,
                  padding: const EdgeInsets.all(32.0),
                  child: Column(
                    children: <Widget>[
                      Image.asset("images/kehadiran.png",
                      height: 70,
                      width: 55,),
                      Text('Kehadiran', style: TextStyle(
                      color: Color.fromARGB(198, 9, 51, 133),
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),)
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  padding: EdgeInsets.all(32.0),
                  child: Column(
                    children: <Widget>[
                      Image.asset("images/tugas.png",
                      height: 70,
                      width: 55,
                      ),
                      Text('Tugas', style: TextStyle(
                      color: Color.fromARGB(198, 9, 51, 133),
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),)
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  padding: EdgeInsets.all(32.0),
                  child: Column(
                    children: <Widget>[
                      Image.asset("images/pustaka.png",
                      height: 70,
                      width: 55,),
                      Text('Pustaka', style: TextStyle(
                      color: Color.fromARGB(198, 9, 51, 133),
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),)
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  padding: const EdgeInsets.all(32.0),
                  child: Column(
                    children: <Widget>[
                      Image.asset("images/material.png",
                      height: 70,
                      width: 55,),
                      Text('Material', style: TextStyle(
                      color: Color.fromARGB(198, 9, 51, 133),
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),

       bottomNavigationBar: BottomNavigationBar(
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.task),
        label: 'Tugas',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.help_center),
        label: 'Bantuan',
      ),
    ],
  ),
 //Center
//  resizeToAvoidBottomPadding : false,
//  resizeToAvoidBottomInset: false,
	), //Scaffold
	debugShowCheckedModeBanner: false, //Removing Debug Banner
);
}
