import 'dart:html' as html;
import 'dart:js' as js;
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:iddaaapp/social_button.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Davide Agostini Hub',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String socialName = "@davideagostini";
  String description =
      "Mobile Software Engineer (Android/Flutter) \nwho loves create interesting mobile apps with an eye to UI.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFEFEFE),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 40,
                ),
                // Container(
                //   width: 150,
                //   height: 150,
                //   decoration: BoxDecoration(
                //     shape: BoxShape.circle,
                //     color: Colors.white,
                //     image: DecorationImage(
                //       fit: BoxFit.fill,
                //       image: AssetImage('assets/davide.jpg'),
                //     ),
                //     boxShadow: [
                //       BoxShadow(
                //         color: Colors.black12,
                //         offset: Offset(0, 4),
                //         blurRadius: 4.0,
                //       )
                //     ],
                //   ),
                // ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  socialName,
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  description,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      height: 1.5,
                      letterSpacing: 0),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'Social links',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  width: 150,
                  height: 1,
                  color: Colors.grey[300],
                ),
                const SizedBox(
                  height: 30,
                ),
                SocialButton(
                  url: 'https://davideagostini.medium.com',
                  icon: MdiIcons.typewriter,
                  iconColor: Colors.black,
                  label: "Medium blog",key: UniqueKey()
                ),
                const SizedBox(
                  height: 25,
                ),
                SocialButton(
                  url: 'https://github.com/davideagostini',
                  icon: MdiIcons.github,
                  iconColor: Colors.black,
                  label: "GitHub profile",key: UniqueKey()
                ),
                const SizedBox(
                  height: 25,
                ),
                SocialButton(
                  url: 'https://www.linkedin.com/in/davideagostini/',
                  icon: MdiIcons.linkedin,
                  iconColor: Colors.blue,
                  label: "LinkedIn profile",key: UniqueKey()
                ),
                const SizedBox(
                  height: 25,
                ),
                SocialButton(
                  url: 'https://twitter.com/davideagostini',
                  icon: MdiIcons.twitter,
                  iconColor: Colors.lightBlue,
                  label: "I'm on Twitter!", key: UniqueKey(),
                ),
                const SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}