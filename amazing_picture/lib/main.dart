import 'package:flutter/material.dart';
import './second_page.dart';
import './network.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(
      ),
      home: AmazingPicture(),
    );
  }
}

class AmazingPicture extends StatefulWidget {
  AmazingPicture({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _AmazingPictureState createState() => _AmazingPictureState();
}

class _AmazingPictureState extends State<AmazingPicture> {
@override
  void initState() {
    PhotosData().getPhotosData();

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Amazing picture'),
      ),
      body: Container(
        child: FutureBuilder(
          future: PhotosData().getPhotosData(),
            builder: (BuildContext context, AsyncSnapshot snapshot){
            if(snapshot.data == null){
              return Container(
                child: Center(
                  child: Text('Loading...'),
                ),
              );
            }
              return ListView.builder(
                itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index){
                    return Card(
                      child: ListTile(
                        leading: CircleAvatar(radius: 28,
                          backgroundImage: NetworkImage(snapshot.data[index].thumb),
                        ),

                        title: Text(snapshot.data[index].name),
                        subtitle: Text(snapshot.data[index].location),
                        trailing: Icon(Icons.keyboard_arrow_right),
                        onTap:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage(snapshot.data[index])));
                        },

                      ),
                    );
                  },
              );
            }
        ),
      ),

    );
  }
}


//ListView(children: <Widget>[
//Container(
//color: Colors.cyan,
//child: ListTile(
//leading: Icon(Icons.smartphone),
//title: Text('aaa'),
//subtitle: Text('bbb'),
//onTap: (){
//setState(() {
////PhotosData().getPhotosData();
//print('on tap');
//});
//Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage()));
//},
//
//),
//),
//],),