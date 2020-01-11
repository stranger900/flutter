import 'package:flutter/material.dart';
import 'package:random_words/random_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final noun = WordNoun.random();
    final adjective = WordAdjective.random();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Word GAME',
      //theme: ThemeData(primarySwatch: Colors.blue,),
      home: RandomSentences(),
    
    );
  }
}

class RandomSentences extends StatefulWidget{
  @override
  createState() =>  _RandomSentencesState();

}

class _RandomSentencesState extends State<RandomSentences>{

  final _sentences = <String>[];
  final _funnies = Set<String>();
  final _biggerFont = const TextStyle(fontSize:14.0);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Word Game'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.list),
              onPressed: _pushFannies)
        ],
      ),
      body: _buildSentences(),
    );
  }

String   _getSentence(){
  final noun = WordNoun.random();
  final adjective = WordAdjective.random();
  return ('Artem remember '
      '${adjective.asCapitalized} koliadku'
      ' and Denys dreams about '
      ' his ${noun.asCapitalized}'
  );
}

void _pushFannies(){
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context){
        final tiles = _funnies.map(
            (sentence) {
              return ListTile(
                title: Text(
                  sentence,
                  style: _biggerFont,
                ),
              );
            },
        );
        final divided = ListTile.divideTiles(
            tiles: tiles,
            context: context,
        ).toList();

        return Scaffold(
          appBar: AppBar(
            title: Text('Saved Funny Sentences'),
          ),
          body: ListView(children: divided,),
        );
      },
      ),
    );
}

Widget _buildRow(String sentence){
    final alreadyFoundFunny =_funnies.contains(sentence);
    return ListTile(
      title: Text(
        sentence,
        style: _biggerFont,
      ),
      trailing: Icon(
          alreadyFoundFunny ? Icons.thumb_up : Icons.thumb_down ,
        color: alreadyFoundFunny ? Colors.green : null,
      ),
      onTap: () {
        setState(() {
          if(alreadyFoundFunny){
            _funnies.remove(sentence);
          }
          else {
            _funnies.add(sentence);
          }
        });
      },
    );
}

Widget _buildSentences() {
    return ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (context, i){
          if(i.isOdd) return Divider();
          final index = i~/2;
          if(index >= _sentences.length){
            for(int x=0; x<10; ++x){
              _sentences.add(_getSentence());
            }
          }
          return _buildRow(_sentences[index]);
        }
    );
}
}