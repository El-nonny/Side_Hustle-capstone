
// ignore_for_file: non_constant_identifier_names

// import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:login_ui/layOutScreen/dashboard.dart';
import 'package:login_ui/layOutScreen/SignupScreen.dart';
import 'package:login_ui/main.dart';


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  get _color => null;

  get MultiDex => null;

  @override
  Widget build(BuildContext context) {
    var home;
    return MaterialApp(
      title: 'Flutter Login UI',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      appBar: AppBar(
        title: Text('Flutter Login UI'),
      ),
      body: LocationApp(),
    )
  );
}
}

class LocationApp extends StatefulWidget {
  @override
  _LocationAppState createState() => _LocationAppState();
}

class _LocationAppState extends State<LocationApp> {


  get _color => null;

  set password(String password) {}

  set email(String email) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height,
            maxWidth: MediaQuery.of(context).size.width,
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.green.shade500,
                Colors.red.shade500,
              ],
              begin: Alignment.topLeft,
              end: Alignment.centerRight,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 36.0, horizontal: 24.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.all(8),
                        width: 100.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color: this._color,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: CircleAvatar(child: const FlutterLogo(),
                        radius:50.0,
                        backgroundColor: Colors.blueGrey[900],),
                        ),
                      const SizedBox(
                        height: 6.0,
                      ),
                      const Text(
                        "Group 7 Capstone Project",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      )),
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextField(
                          onChanged: (value) {
                          email = value;
                          },
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide.none,
                              ),
                              filled: true,
                              fillColor: Color(0xFFe7edeb),
                              hintText: "E-mail",
                              prefixIcon: Icon(
                                Icons.email,
                                color: Colors.grey[600],
                              )),
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        TextField(
                          obscureText: true,
                          onChanged: (value) {
                          password = value;
                          },
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide.none,
                              ),
                              filled: true,
                              fillColor: Color(0xFFe7edeb),
                              hintText: "Password",
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.grey[600],
                              )),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            TextButton(
                              child: Text(
                                "Forget your password?",
                                style: TextStyle(
                                  color: Colors.green[800],
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const signup()));
                              },
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        Container(
                          width: double.infinity,
                          child: FlatButton(
                            onPressed: () {
                              Navigator.push(context,
                                MaterialPageRoute(builder: (context) => const dashboard()));
                            },
                            color: Colors.green[600],

                            child: const Padding(
                              padding:
                                  EdgeInsets.symmetric(vertical: 16.0),
                              child: Text("Login",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                  )),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Don't have an account?"),
                            FlatButton(
                              child: Text(
                                "Sign up",
                                style: TextStyle(
                                  color: Colors.red[800],
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(context,
                                MaterialPageRoute(builder: (context) => const signup()));
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}