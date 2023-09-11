
import 'package:flutter/material.dart';

class SearchHymns extends StatefulWidget {
  const SearchHymns({super.key});


  @override
  _SearchHymnsS createState() {
    return _SearchHymnsS();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class _SearchHymnsS extends State<SearchHymns> {
  TextEditingController nameController = TextEditingController();




  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: const Text('Search Hymns'),
      ),
      body: Column(
        children: [

          const TextField(
            decoration: InputDecoration(
          border: OutlineInputBorder(),
            hintText: 'Enter a search term',
              

    ),


          ),
    //       Center(
    //         child: ElevatedButton(
    //           onPressed: () {
    //             String testing = ;
    // Navigator.push(context,
    // MaterialPageRoute(builder: (context) => const Hymn300()));
    // },
    //
    //           child: const Text('Go back Home!'),
    //         ),
    //
    //       ),
        ],
      ),
    );
}