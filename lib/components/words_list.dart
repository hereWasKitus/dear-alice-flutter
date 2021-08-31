// import 'package:dear_alice/components/word_item.dart';
import 'package:dear_alice/models/words.dart';
import 'package:flutter/material.dart';

class WordsList extends StatelessWidget {
  const WordsList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return ListView(
    //   padding: EdgeInsets.symmetric(horizontal: 15),
    //   children: <Widget>[
    //     WordItem()
    //   ],
    // );
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        return wordItems[index];
      },
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(height: 10);
      },
      itemCount: wordItems.length
    );
  }
}
