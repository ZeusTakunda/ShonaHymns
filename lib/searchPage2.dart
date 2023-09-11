
import 'package:flutter/material.dart';

import 'ShonaHymns/1.dart';



class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Tutorial - googleflutter.com'),
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'User Name',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                  String testing = "Hymn${nameController.text}" ;
                   // ignore: unrelated_type_equality_checks
                   if(nameController.text == "1"){
                     Navigator.push(context,
                         MaterialPageRoute(builder: (context) =>  Hymn1()));
                   }
                   // ignore: unrelated_type_equality_checks
                   else if(nameController.text == "2"){
                     Navigator.push(context,
                         MaterialPageRoute(builder: (context) =>  Hymn2()));
                   }


                  },

                  child: const Text('Go back Home!'),
                ),
                // RaisedButton(
                //   textColor: Colors.white,
                //   color: Colors.blue,
                //   child: Text('Login'),
                //   onPressed: (){
                //     print(nameController.text);
                //     print(passwordController.text);
                //   },
                // )
              ],
            )
        )
    );
  }
}
