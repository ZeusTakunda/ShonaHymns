
import 'package:flutter/material.dart';
import 'package:shona_methodist_hymn_book/main.dart';

import 'ShonaHymns/1.dart';

class ShonaHymns extends StatelessWidget {
  const ShonaHymns

  ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shona Hymns'),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15,10, 10, 10),
        child: Column(children: <Widget>[
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black, shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
                  child: const Text("1"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Hymn1()));
                  }),
              const SizedBox(
                width: 10,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black, shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
                  child: const Text("2"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Hymn2()));
                  }),
              const SizedBox(
                width: 10,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black, shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
                  child: const Text("3"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Hymn3()));
                  }),
              const SizedBox(
                width: 10,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black, shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
                  child: const Text("4"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Hymn4()));
                  }),
              const SizedBox(
                width: 10,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black, shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
                  child: const Text("5"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Hymn5()));
                  }),
            ],
          ),
        ]),
      ),
    );
  }
}