import 'package:flutter/material.dart';

import 'calls.dart';
import 'chats.dart';
import 'status.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

@override
 Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData( 
        primaryColor: const Color(0xff075E54),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.7,
        actions: const <Widget>[
          Icon(Icons.search),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 7.0),
          ),
          Icon(Icons.more_vert),
          Padding(padding: EdgeInsets.symmetric(horizontal: 5.0)),
        ],
        title: const Text(
          "WhatsApp",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        bottom: TabBar(
          indicatorColor: Colors.white,
          controller: tabController,
          tabs: <Widget>[
            Container(
              width: 30.0,
              child: const Tab(
                icon: Icon(Icons.camera_alt),
              ),
            ),
            const Tab(
              child: Text("CHATS",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            const Tab(
                child: Text(
              "STATUS",
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            const Tab(
              child: Text(
                "CALLS",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: <Widget>[const Center(child: Text("Camera"),), Chats(), Status(), Calls()],
      ),
    );
  }
}
