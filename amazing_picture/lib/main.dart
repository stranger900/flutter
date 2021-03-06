import 'package:flutter/material.dart';
import './second_page.dart';
import './network.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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

                        title: Text(snapshot.data[index].name,style: TextStyle(fontSize: 20.0),),
                        subtitle: Text(snapshot.data[index].location, style: TextStyle(fontSize: 17.0),),
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

