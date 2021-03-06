import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() =>  runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final wordPair = WordPair.random();
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
         //child: Text(wordPair.asPascalCase),
          child: RandomWords(),
        ),
      )
    );
  }
}

class RandomWordsState extends State<RandomWords> {
  // TODO Add build() method
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Text(wordPair.asPascalCase);
  }
}

class RandomWords extends StatefulWidget{
  RandomWordsState createState() => RandomWordsState();
}