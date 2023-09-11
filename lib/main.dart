import 'package:flutter/material.dart';
import 'package:shona_methodist_hymn_book/ShonaHymns.dart';
import 'package:shona_methodist_hymn_book/searchPage.dart';
import 'package:shona_methodist_hymn_book/searchPage2.dart';
import 'package:splashscreen/splashscreen.dart';

import 'ShonaPrayers.dart';

void main() {
  runApp(MaterialApp(
      title: 'Navigation Basics',
      home: SplashScreen(
          seconds: 5,
          navigateAfterSeconds: const FirstRoute(),
          title: const Text(
            '\n \n    Methodist Shona \n Hymns and Prayers',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.red),
          ),
          image: Image.asset('assets/methodistlogo.png'),
          photoSize: 100.0,
          backgroundColor: Colors.white,
          styleTextUnderTheLoader: const TextStyle(),
          loaderColor: Colors.white)));
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Methodist Shona Prayers and Hymns'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 60.0, 8.0, 10.0),
          child: Row(
            children: [
              Column(children: <Widget>[
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  height: 10,
                ),
                // const SizedBox(
                //   width: 370,
                //   height: 75,
                  // child: ElevatedButton(
                  //     style: ElevatedButton.styleFrom(
                  //         backgroundColor: Colors.black,
                  //         shape: RoundedRectangleBorder(
                  //             borderRadius: BorderRadius.circular(30))),
                  //     onPressed: () {
                  //       Navigator.push(
                  //           context,
                  //           MaterialPageRoute(
                  //               builder: (context) => const ShonaPrayers()));
                  //     },
                  //     child: const Text('Shona Prayers',
                  //         style: TextStyle(fontSize: 20.0))),
                // ),--future feature
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: Row(
                    children: [
                    //  SizedBox(width:10),
                      SizedBox(
                        width: 370,
                        height: 75,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ShonaHymns()));
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30))),
                          child: const Text('Shona Hymns',
                              style: TextStyle(fontSize: 20.0)),
                        ),
                      ),

                    ],
                  ),

                ),
                SizedBox(
                  width: 370,
                  height: 75,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyApp()));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                    child: const Text('Search Hymns',
                        style: TextStyle(fontSize: 20.0)),
                  ),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
