import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Torr Finder',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF26166b),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Torr Finder'),
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

  void homeset() {
    setState(() 
      {
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title,style: TextStyle(fontFamily: 'Pacifico')),
        elevation: 0,
        backgroundColor: Color(0xFF26166b),
        centerTitle: true,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
                homeset();
              },
            );
          }
        ),
        actions: <Widget>[
          Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.account_circle),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)), //this right here
                        child: Container(
                          height: 350,
                          width: 280,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Developer',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Pacifico',
                                    fontSize: 25.0,
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(15.0),
                                  child: Image.asset(
                                    "assets/images/Giri.jpg",
                                    width: 180,
                                    height: 200,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Text(
                                  'Giridhar Salana',
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontFamily: 'Pacifico',
                                    fontSize: 20.0,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center, 
                                  children: [
                                    IconButton(
                                      icon: Icon(FontAwesomeIcons.facebook, color: Colors.red),
                                      onPressed: () async {
                                        const fburl = 'https://www.facebook.com/GiridharSalana';
                                        if (await canLaunch(fburl)) {
                                          await launch(fburl);
                                        } else {
                                          throw 'Could not launch $fburl';
                                        }
                                      }),
                                    SizedBox(width: 20),
                                    IconButton(
                                      icon: Icon(FontAwesomeIcons.linkedin, color: Colors.red),
                                      onPressed: () async {
                                        const liurl = 'https://www.linkedin.com/in/Giridhar-Salana';
                                        if (await canLaunch(liurl)) {
                                          await launch(liurl);
                                        } else {
                                          throw 'Could not launch $liurl';
                                        }
                                      }),
                                    SizedBox(width: 20),
                                    IconButton(
                                      icon: Icon(FontAwesomeIcons.github, color: Colors.red),
                                      onPressed: () async {
                                        const giurl = 'https://github.com/Giridharsalana';
                                        if (await canLaunch(giurl)) {
                                          await launch(giurl);
                                        } else {
                                          throw 'Could not launch $giurl';
                                        }
                                      }),
                                    SizedBox(width: 20),
                                    IconButton(
                                      icon: Icon(FontAwesomeIcons.twitter, color: Colors.red),
                                      onPressed: () async {
                                        const tiurl = 'https://www.twitter.com/GiridharSalana3';
                                        if (await canLaunch(tiurl)) {
                                          await launch(tiurl);
                                        } else {
                                          throw 'Could not launch $tiurl';
                                        }
                                      }
                                    ),
                                  ]
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    }
                  );
                },
              );
            }
          ),
        ],
      ),
    );
  }
}
