import 'package:flutter/material.dart';

class Status extends StatefulWidget {
  const Status({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(
      onPressed: () {},
      child: const Icon(Icons.speaker,color: Colors.white,),),

      body: const Center(
        child: Text("STATUS"),
      ),
    );
  }
}
