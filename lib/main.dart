import 'package:flutter/material.dart';
import 'package:guinita_profile/view/my_profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'PROFILE',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
            child: Center(
          child: MyProfilePage(),
        )));
  }
}
