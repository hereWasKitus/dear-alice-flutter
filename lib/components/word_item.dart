import 'package:dear_alice/pages/word_item_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WordItem extends StatefulWidget {
  String translated;
  final String defaultWord;

  WordItem({Key? key, required this.defaultWord, required this.translated});

  @override
  _WordItemState createState() => _WordItemState();
}

class _WordItemState extends State<WordItem> {

  void changeTranslation (newWord) {
    setState(() {
      widget.translated = newWord;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text('${widget.defaultWord} -> ${widget.translated}', style: TextStyle(fontSize: 18)),
          Row(
            children: <Widget>[
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (builder) => WordItemScreen(worditem: widget, applyTranslation: (text) {
                        changeTranslation(text);
                      })
                    )
                  );
                },
                icon: Icon(Icons.edit)
              )
            ],
          )
        ],
      ),
      decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.black, width: 1))),
    );
  }
}
