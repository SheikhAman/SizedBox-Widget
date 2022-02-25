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
        ),
        home: const LSizedBox());
  }
}

class LSizedBox extends StatelessWidget {
  const LSizedBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.teal),
          onPressed: () {},
          child: const Text("Simple RaisedButton"),
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.teal.shade200),
          onPressed: () {},
          child: const Text("Simple RaisedButton"),
        ),
        SizedBox(
          height: 100,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.teal.shade200),
            onPressed: () {},
            child: const Text("Button with specific height"),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          width: 100,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.teal.shade400),
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Button with specific width"),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.teal.shade100),
              onPressed: () {},
              child: const Text("Button with infinity width")),
        )
      ],
    );
  }
}
