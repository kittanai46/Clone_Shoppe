import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter App"),
          backgroundColor: Colors.redAccent,
        ),
        body: Container(
          color: Colors.blueAccent,
          child: Center(
            child: Text(
              "Hello World",
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
        ),
      ),
    ),
  );
}
