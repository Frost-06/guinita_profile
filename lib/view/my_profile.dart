import 'package:flutter/material.dart';
import 'package:guinita_profile/service/api_gateway.dart';
import 'package:guinita_profile/model/profile.dart';

class MyProfilePage extends StatefulWidget {
  MyProfilePage({Key key, this.id}) : super(key: key);

  final int id;

  @override
  _MyProfilePageState createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  final APIGateway apiGateway = APIGateway();
  Future<Profile> _myProfile;

  void _session() async {
    setState(() {
      _myProfile = apiGateway.asyncGet(widget.id);
    });
  }

  void initState() {
    super.initState();
    _session();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: FutureBuilder(
          future: _myProfile,
          builder: (BuildContext context, AsyncSnapshot<Profile> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              print("Cirular Progress Indicator---");
              return Container(
                padding: EdgeInsets.all(400),
                child: Center(
                  child: CircularProgressIndicator(),
                ), //Center
              ); // Container
            } else if (snapshot.hasError) {
              final error = snapshot.error;
              print("ERROR---");
              return Text(error.toString());
            } else if (snapshot.hasData) {
              Profile profile = snapshot.data;
              print("WITH DATA---");
              return container(context, profile);
            } else {
              print("NO PROFILE FOUND---");
              return Text('No Profile Found');
            }
          }), //FutureBuilder
    ) //SingleChildScrollView
        ); //Scaffold
  }

  Widget container(BuildContext context, Profile profile) {
    return Column(
      children: <Widget>[
        //Avatar
        Container(
          decoration:
              BoxDecoration(border: Border.all(color: Colors.blueAccent)),
          height: 170,
          child: Center(
            child: Container(
              width: 130,
              height: 130,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: NetworkImage(profile.imglink.toString()),
                    fit: BoxFit.fill),
              ),
            ),
          ),
        ),
        //Personal Information
        Container(
          padding: EdgeInsets.fromLTRB(6, 3, 0, 3),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Personal Information',
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  color: Colors.indigoAccent[700],
                  fontSize: 16.0,
                  fontWeight: FontWeight.w900,
                  decoration: TextDecoration.none),
            ),
          ),
        ),
        //Personal info data
        Container(
          padding: EdgeInsets.fromLTRB(15, 9, 15, 9),
          decoration:
              BoxDecoration(border: Border.all(color: Colors.blueAccent)),
          child: Row(
            children: <Widget>[
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  verticalDirection: VerticalDirection.down,
                  children: <Widget>[
                    Container(
                        child: Text(
                      profile.firstname.toString() +
                          " " +
                          profile.mi.toString() +
                          ". " +
                          profile.lastname.toString(),
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w900,
                          decoration: TextDecoration.none),
                    )),
                    Container(
                        child: Text(
                      profile.email.toString(),
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w900,
                          decoration: TextDecoration.none),
                    )),
                    Container(
                        child: Text(
                      profile.address.toString(),
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w900,
                          decoration: TextDecoration.none),
                    ))
                  ],
                ),
              ),
              Spacer(),
              //phone number
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  verticalDirection: VerticalDirection.down,
                  children: <Widget>[
                    Container(
                        child: Text(
                      profile.phonenumber.toString(),
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w900,
                          decoration: TextDecoration.none),
                    )),
                    Container(
                      padding: const EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: Colors.blue,
                      ),
                      child: Icon(
                        Icons.phone_in_talk,
                        color: Colors.white,
                        size: 20,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        //Short description about self
        Container(
          padding: EdgeInsets.fromLTRB(6, 3, 0, 3),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Short description about yourself',
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  color: Colors.indigoAccent[700],
                  fontSize: 16.0,
                  fontWeight: FontWeight.w900,
                  decoration: TextDecoration.none),
            ),
          ),
        ),
        //description data
        Container(
          decoration:
              BoxDecoration(border: Border.all(color: Colors.blueAccent)),
          padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
          child: Center(
            child: Container(
              child: Text(profile.description.toString(),
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w900,
                      decoration: TextDecoration.none)),
            ),
          ),
        ),

        //basic info and educ bg
        Container(
          padding: EdgeInsets.fromLTRB(6, 3, 6, 3),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Basic Information',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        color: Colors.indigoAccent[700],
                        fontSize: 16.0,
                        fontWeight: FontWeight.w900,
                        decoration: TextDecoration.none),
                  ),
                ),
              ),
              Container(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Educational background',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        color: Colors.indigoAccent[700],
                        fontSize: 16.0,
                        fontWeight: FontWeight.w900,
                        decoration: TextDecoration.none),
                  ),
                ),
              ),
            ],
          ),
        ),

        //basic info data
        Container(
          decoration:
              BoxDecoration(border: Border.all(color: Colors.blueAccent)),
          height: 205,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.fromLTRB(20, 30, 0, 0),
                      child: Column(
                        children: <Widget>[
                          Container(
                              child: Row(
                            children: <Widget>[
                              Container(
                                  child: Text(
                                'Age',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w900,
                                    decoration: TextDecoration.none),
                              )),
                              Container(
                                child: Text(
                                  ':',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w900,
                                      decoration: TextDecoration.none),
                                ),
                                padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                              ),
                              Container(
                                child: Text(
                                  profile.age.toString(),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w900,
                                      decoration: TextDecoration.none),
                                ),
                                padding: EdgeInsets.fromLTRB(6, 0, 0, 0),
                              )
                            ],
                          )),
                          Container(
                              child: Row(
                            children: <Widget>[
                              Container(
                                  child: Text(
                                'Birthday',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w900,
                                    decoration: TextDecoration.none),
                              )),
                              Container(
                                child: Text(
                                  ':',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w900,
                                      decoration: TextDecoration.none),
                                ),
                                padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                              ),
                              Container(
                                child: Text(
                                  profile.birthday.toString(),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w900,
                                      decoration: TextDecoration.none),
                                ),
                                padding: EdgeInsets.fromLTRB(6, 0, 0, 0),
                              )
                            ],
                          )),
                          Container(
                              child: Row(
                            children: <Widget>[
                              Container(
                                  child: Text(
                                'Gender',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w900,
                                    decoration: TextDecoration.none),
                              )),
                              Container(
                                child: Text(
                                  ':',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w900,
                                      decoration: TextDecoration.none),
                                ),
                                padding: EdgeInsets.fromLTRB(32, 0, 0, 0),
                              ),
                              Container(
                                child: Text(
                                  profile.gender.toString(),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w900,
                                      decoration: TextDecoration.none),
                                ),
                                padding: EdgeInsets.fromLTRB(6, 0, 0, 0),
                              )
                            ],
                          )),
                          Container(
                              child: Row(
                            children: <Widget>[
                              Container(
                                  child: Text(
                                'Status',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w900,
                                    decoration: TextDecoration.none),
                              )),
                              Container(
                                child: Text(
                                  ':',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w900,
                                      decoration: TextDecoration.none),
                                ),
                                padding: EdgeInsets.fromLTRB(36, 0, 0, 0),
                              ),
                              Container(
                                child: Text(
                                  profile.status.toString(),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w900,
                                      decoration: TextDecoration.none),
                                ),
                                padding: EdgeInsets.fromLTRB(6, 0, 0, 0),
                              )
                            ],
                          )),
                          Container(
                              child: Row(
                            children: <Widget>[
                              Container(
                                  child: Text(
                                'Religion',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w900,
                                    decoration: TextDecoration.none),
                              )),
                              Container(
                                child: Text(
                                  ':',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w900,
                                      decoration: TextDecoration.none),
                                ),
                                padding: EdgeInsets.fromLTRB(27, 0, 0, 0),
                              ),
                              Container(
                                child: Text(
                                  profile.religion.toString(),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w900,
                                      decoration: TextDecoration.none),
                                ),
                                padding: EdgeInsets.fromLTRB(6, 0, 0, 0),
                              )
                            ],
                          ))
                        ],
                      ))),
              Container(
                decoration: BoxDecoration(
                    border: Border(
                  right: BorderSide(width: 1.0, color: Colors.blueAccent),
                )),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(15, 6, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    verticalDirection: VerticalDirection.down,
                    children: <Widget>[
                      Container(
                          child: Text(
                        'College',
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 11.0,
                            fontWeight: FontWeight.w900,
                            decoration: TextDecoration.none),
                      )),
                      Container(
                        child: Text(
                          profile.educcollegeprogram.toString(),
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 11.0,
                              fontWeight: FontWeight.w900,
                              decoration: TextDecoration.none),
                        ),
                        padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                      ),
                      Container(
                        child: Text(
                          profile.educcollegeschool.toString(),
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 11.0,
                              fontWeight: FontWeight.w900,
                              decoration: TextDecoration.none),
                        ),
                        padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                      ),
                      Container(
                        child: Text(
                          profile.educcollegedate.toString(),
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 11.0,
                              fontWeight: FontWeight.w900,
                              decoration: TextDecoration.none),
                        ),
                        padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                      ),

                      //senior high
                      Container(
                          child: Text(
                        'Senior High',
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 11.0,
                            fontWeight: FontWeight.w900,
                            decoration: TextDecoration.none),
                      )),
                      Container(
                        child: Text(
                          profile.educseniorhighschool.toString(),
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 11.0,
                              fontWeight: FontWeight.w900,
                              decoration: TextDecoration.none),
                        ),
                        padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                      ),
                      Container(
                        child: Text(
                          profile.educseniorhighdate.toString(),
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 11.0,
                              fontWeight: FontWeight.w900,
                              decoration: TextDecoration.none),
                        ),
                        padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                      ),

                      //juinor high
                      Container(
                          child: Text(
                        'Junior High',
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 11.0,
                            fontWeight: FontWeight.w900,
                            decoration: TextDecoration.none),
                      )),
                      Container(
                        child: Text(
                          profile.educjuniorhighschool.toString(),
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 11.0,
                              fontWeight: FontWeight.w900,
                              decoration: TextDecoration.none),
                        ),
                        padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                      ),
                      Container(
                        child: Text(
                          profile.educjuniorhighdate.toString(),
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 11.0,
                              fontWeight: FontWeight.w900,
                              decoration: TextDecoration.none),
                        ),
                        padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                      ),

                      //Primary high
                      Container(
                          child: Text(
                        'Primary',
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12.0,
                            fontWeight: FontWeight.w900,
                            decoration: TextDecoration.none),
                      )),
                      Container(
                        child: Text(
                          profile.educprimaryschool.toString(),
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 11.0,
                              fontWeight: FontWeight.w900,
                              decoration: TextDecoration.none),
                        ),
                        padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                      ),
                      Container(
                        child: Text(
                          profile.educprimaryschool.toString(),
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 11.0,
                              fontWeight: FontWeight.w900,
                              decoration: TextDecoration.none),
                        ),
                        padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ); //Column
  }
}
