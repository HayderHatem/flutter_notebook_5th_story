import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SmartHomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SmartHomeSpeaker(),
    );
  }
}

class SmartHomeSpeaker extends StatefulWidget {
  @override
  _SmartHomeSpeakerState createState() => _SmartHomeSpeakerState();
}

class _SmartHomeSpeakerState extends State<SmartHomeSpeaker> {
  double _value = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            top: 0,
            right: 0,
            bottom: MediaQuery.of(context).size.height / 2,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: NetworkImage("https://cdn.pixabay.com/photo/2017/11/24/10/43/radio-2974649__340.jpg"),
                fit: BoxFit.cover,
              )),
              padding: EdgeInsets.all(16),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    IconButton(
                      alignment: Alignment.centerLeft,
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {},
                      iconSize: 32,
                      color: Colors.white,
                    ),
                    Text(
                      "Living Room",
                      style: GoogleFonts.montserrat(color: Colors.white, letterSpacing: 1),
                    ),
                    Text(
                      "Speaker",
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                        letterSpacing: 2,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: MediaQuery.of(context).size.height / 2 + 34,
              decoration: BoxDecoration(
                  color: Colors.blueGrey[50],
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(24),
                    topLeft: Radius.circular(24),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 24),
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 22),
                        width: 72,
                        decoration: BoxDecoration(color: Colors.orange, borderRadius: BorderRadius.circular(24)),
                        padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                        child: Row(
                          children: <Widget>[
                            Spacer(),
                            Text(
                              "On",
                              style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300, fontSize: 20),
                            ),
                            Spacer(),
                            CircleAvatar(
                              radius: 13,
                              backgroundColor: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Volume",
                            style: GoogleFonts.montserrat(),
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                height: 34,
                                width: 34,
                                decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle, boxShadow: [
                                  BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 2, spreadRadius: 2)
                                ]),
                                child: Center(
                                  child: Icon(Icons.remove),
                                ),
                              ),
                              Expanded(
                                child: SliderTheme(
                                  data: SliderTheme.of(context).copyWith(
                                      trackHeight: 16,
                                      activeTrackColor: Colors.orange,
                                      inactiveTrackColor: Colors.grey,
                                      thumbShape: RoundSliderThumbShape(
                                        enabledThumbRadius: 16,
                                      ),
                                      thumbColor: Colors.white),
                                  child: Slider(
                                    value: _value,
                                    onChanged: (v) {
                                      setState(() {
                                        _value = v;
                                      });
                                    },
                                  ),
                                ),
                              ),
                              Container(
                                height: 34,
                                width: 34,
                                decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle, boxShadow: [
                                  BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 2, spreadRadius: 2)
                                ]),
                                child: Center(
                                  child: Icon(Icons.add),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Divider(),
                  Expanded(
                    flex: 3,
                    child: Placeholder(),
                  ),
                  Expanded(
                    flex: 4,
                    child: Placeholder(),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
