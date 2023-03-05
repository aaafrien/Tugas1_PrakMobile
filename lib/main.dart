import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '123200093 - Tugas 1 Praktikum Teknologi Pemrograman Mobile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(
        title: 'Login Screen',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlutterLogo(),
            SizedBox(
              height: 60,
            ),
            usernameField(),
            SizedBox(
              height: 10,
            ),
            passwordField(),
            SizedBox(
              height: 20,
            ),
            btLogin(),
            TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  minimumSize: Size(0, 0),
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                child: Text("Forgot password?",
                    style: TextStyle(color: Colors.grey))),
          ],
        ),
      ),
    );
  }

  Widget usernameField() {
    return Container(
      height: 60,
      padding: EdgeInsets.only(left: 32, right: 32),
      child: TextFormField(
        decoration: InputDecoration(
            hintText: "Email",
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(99))),
      ),
    );
  }

  Widget passwordField() {
    return Container(
      height: 60,
      padding: EdgeInsets.only(left: 32, right: 32),
      child: TextFormField(
        obscureText: true,
        decoration: InputDecoration(
            hintText: "Password",
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(99))),
      ),
    );
  }

  Widget btLogin() {
    return Container(
      padding: EdgeInsets.only(left: 32, right: 32),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size.fromHeight(30),
        ),
        onPressed: () {},
        child: Text("Log In"),
      ),
    );
  }
}
