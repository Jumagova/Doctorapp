import 'package:flutter/material.dart';
import 'package:flutter_application_3/screens/page02.dart';

void main() {
  runApp(const MiApp());
}

class MiApp extends StatelessWidget {
  const MiApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Mi App",
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body(),
    );
  }
}




Widget body() {
  return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://cdn.wallpapersafari.com/11/36/V3aAmS.jpg"),
              fit: BoxFit.cover)),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          user(),
          const SizedBox(height: 50),
          userText(),
          passwordText(),
          const SizedBox(height: 50),
          confirmButton()
        ],
      )));
}

Widget user() {
  return const Text("Sign in",
      style: TextStyle(
          color: Colors.white, fontSize: 35.0, fontWeight: FontWeight.bold));
}

Widget userText() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
    child: const TextField(
      decoration: InputDecoration(
          hintText: "User", fillColor: Colors.white, filled: true),
    ),
  );
}

Widget passwordText() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
    child: const TextField(
      obscureText: true,
      decoration: InputDecoration(
          hintText: "Password", fillColor: Colors.white, filled: true),
    ),
  );
}

Widget confirmButton() {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
      primary: Colors.blue, // background
      onPrimary: Colors.white, // foreground
    ),
    onPressed: () {
      Navigator.push(
        context, // error
        MaterialPageRoute(builder: (context) => const Page02()),
      );
    },
    child: const Text("Log in", style: TextStyle(fontSize: 15.0)),
  );
}
