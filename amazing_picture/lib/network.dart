import 'package:http/http.dart' as http;
import 'dart:convert';


class PhotosData {
  String data;
  String urlPicture ;

  Future<List<Picture>> getPhotosData() async {

    http.Response response = await http.get(
        'https://api.unsplash.com/photos/?client_id=ab3411e4ac868c2646c0ed488dfd919ef612b04c264f3374c97fff98ed253dc9');
    //print(response.body);
    if (response.statusCode == 200) {
      data = response.body;
      var jsonData = jsonDecode(data);
      List<Picture> picturesLinks = [];
        for(int index=0; index<10; index++){
          Picture picture = Picture(
              index,
              jsonDecode(data)[index]['urls']['thumb'] ?? '',
              jsonDecode(data)[index]['urls']['full'] ?? '',
              jsonDecode(data)[index]['user']['name'] ?? '',
              jsonDecode(data)[index]['user']['location'] ?? '',
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