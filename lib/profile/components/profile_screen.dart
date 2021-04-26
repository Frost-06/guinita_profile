import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                    image: NetworkImage(
                        'https://scontent.fceb2-1.fna.fbcdn.net/v/t1.6435-9/145495805_3653327981440717_4339673096378507185_n.jpg?_nc_cat=109&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=6ipXA62KvpQAX8fls7_&_nc_ht=scontent.fceb2-1.fna&oh=7e86bac05730e7fee5fd307abb1bfd41&oe=6095F890'),
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
                      "ANDRE D. GUINITA",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w900,
                          decoration: TextDecoration.none),
                    )),
                    Container(
                        child: Text(
                      "andredulaguinita@gmail.com",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w900,
                          decoration: TextDecoration.none),
                    )),
                    Container(
                        child: Text(
                      "Mantuyong, Mandaue City",
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
                      "09054588487",
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
              child: Text(
                  'Creative and detail-oriented UI and graphic designer with extensive experience in multimedia, print design, UX, creating interactive programs, effective time-management and problem-solving skills, allowing the completion of projects with minimal supervision that meet clients expectations.',
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
                                  '21',
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
                                  'Jan 11,2000',
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
                                  'Male',
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
                                  'Single',
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
                                  'Roman Catholic',
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
                          'BSIT',
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
                          'UCLM',
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
                          '2018-Present',
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
                          'MCCNHS',
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
                          '2016-2018',
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
                          'MCCNHS',
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
                          '2012-2016',
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
                          'MCCS',
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
                          '2006-2012',
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
    );
  }
}
