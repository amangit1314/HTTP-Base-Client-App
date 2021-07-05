import 'dart:ui';
import 'package:flutter/material.dart';

class MemePage extends StatefulWidget {
  const MemePage({Key? key}) : super(key: key);

  @override
  _MemePageState createState() => _MemePageState();
}

class _MemePageState extends State<MemePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xffa8edea), Color(0xfffed6e3)],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text("Meme Share"),
          centerTitle: true,
        ),
        body: ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height / 1.24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 2.3,
                          height: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(36.0),
                            //border: Border.all(color: Colors.white),
                            color: Color.fromRGBO(18, 22, 64, 1.0),
                          ),
                          child: MaterialButton(
                            child: Text(
                              'Share',
                              style: TextStyle(
                                fontFamily: 'Comforta',
                                color: Colors.white,
                                fontSize: 16.0,
                              ),
                            ),
                            onPressed: () {
                              //Get.to(LoginPage());
                            },
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 2.3,
                          height: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(36.0),
                            //border: Border.all(color: Colors.white),
                            color: Color.fromRGBO(18, 22, 64, 1.0),
                          ),
                          child: MaterialButton(
                            child: Text(
                              'Next',
                              style: TextStyle(
                                fontFamily: 'Comforta',
                                color: Colors.white,
                                fontSize: 16.0,
                              ),
                            ),
                            onPressed: () {
                              //Get.to(LoginPage());
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
