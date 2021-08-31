import 'package:dear_alice/components/words_list.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('For my beloved Alice', style: TextStyle(fontSize: 24)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            splashRadius: 20.0,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: WordsList(),
      ),
    );
  }
}
