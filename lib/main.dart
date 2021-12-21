import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const ScaffoldSample(),
    );
  }
}

class ScaffoldSample extends StatefulWidget {
  const ScaffoldSample({Key? key}) : super(key: key);

  @override
  _ScaffoldSampleState createState() => _ScaffoldSampleState();
}

class _ScaffoldSampleState extends State<ScaffoldSample> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
          title : const Text("Scaffold 알아보기")),
      body: const Center(
        child: TextField(),
      ),
      endDrawer: const Drawer(
        child: Center(
          child: Text("슬라이드메뉴"),
        ),
      ),
      drawer: const Drawer(
        child: Center(
          child: Text("슬라이드메뉴"),
        ),
      ),
      resizeToAvoidBottomInset: false,
      drawerEdgeDragWidth: 100,
      drawerEnableOpenDragGesture: false,
      endDrawerEnableOpenDragGesture: false,
      drawerScrimColor: Colors.red.withOpacity(0.5),
      floatingActionButton:FloatingActionButton(
        onPressed: () {
          print("Click Edit Button.");
        },
        child: const Icon(Icons.edit),
        backgroundColor: Colors.green,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (index) {
          print(index);
        },
        backgroundColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.mail), label: "Messages"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
