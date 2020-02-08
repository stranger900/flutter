import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class PhotosData {
//String url = 'api.unsplash.com/photos/';
//String apiKey = 'cf49c08b444ff4cb9e4d126b7e9f7513ba1ee58de7906e4360afc1a33d1bf4c0';
  String data;
  String urlPicture ;

  Future<List<Picture>> getPhotosData() async {

    http.Response response = await http.get(
        'https://api.unsplash.com/photos/?client_id=ab3411e4ac868c2646c0ed488dfd919ef612b04c264f3374c97fff98ed253dc9');
    //print(response.body);
    if (response.statusCode == 200) {
      data = response.body;
      var jsonData = jsonDecode(data);
//      String url = jsonDecode(data)[0]['urls']['thumb']; //0.user.name 0.user.name
//      var url1 = jsonDecode(data)[0]['user']['location'];//0.user.location
      List<Picture> picturesLinks = []; //0.urls.thumb
//      for(var v in jsonData){
//        Picture picture = Picture(v['index'], v[0]['urls']['thumb'], v[0]['urls']['full'], v[0]['user']['name'], v[0]['user']['location']);
//        picturesLinks.add(picture);
//      }
        for(int index=0; index<10; index++){
          Picture picture = Picture(
              index,
              jsonDecode(data)[index]['urls']['thumb'] ?? '',
              jsonDecode(data)[index]['urls']['full'] ?? '',
              jsonDecode(data)[index]['user']['name'] ?? '',
              jsonDecode(data)[index]['user']['location'] ?? ''
          );
          picturesLinks .add(picture);
        }
      return picturesLinks;

    } else {
      print(response.statusCode);
    }
  }

}

class Picture{
  int index;
  String thumb;
  String full;
  String name;
  String location;

  Picture(this.index, this.thumb, this.full, this.name, this.location);
}