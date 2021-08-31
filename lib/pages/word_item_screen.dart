import 'package:flutter/material.dart';
import 'package:dear_alice/components/word_item.dart';
// import 'package:flutter/services.dart';

class WordItemScreen extends StatefulWidget {
  final WordItem worditem;
  final Function applyTranslation;

  WordItemScreen({required this.worditem, required this.applyTranslation});

  @override
  _WordItemScreenState createState() => _WordItemScreenState();
}

class _WordItemScreenState extends State<WordItemScreen> {
  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

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
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: <Widget>[
            Row(
              children: [
                Text(
                  widget.worditem.defaultWord,
                  style: TextStyle(fontSize: 30.0),
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            TextField(
              controller: myController,
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: () {
                  widget.applyTranslation(myController.text);
                  showDialog(context: context, builder: (context) {
                    return AlertDialog(
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Your translation applied!'),
                          ElevatedButton(onPressed: () {
                            Navigator.pop(context);
                          }, child: Text('Close'))
                        ],
                      ),
                    );
                  });
                }, child: Text('change')),
                ElevatedButton(onPressed: () {
                  Navigator.pop(context);
                }, child: Text('Go back'))
              ],
            ),
          ],
        ),
      )
    );
  }
}
