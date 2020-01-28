import 'dart:convert';
import 'package:http/http.dart' as http;

class NetworkHelper {

  NetworkHelper(this.url);

  final String url;

 Future getData() async{
    http.Response response = await http.get(url);
    //print(response.body);
    if(response.statusCode == 200) {
      String data = response.body;

      return jsonDecode(data);
//      var id = jsonDecode(data)['weather'][0]['id'];
//      print(id);
//      var temp = jsonDecode(data)['main']['temp'];
//      print(temp);
//      var name = jsonDecode(data)['name'];
//      print(name);
    }else{
      print(response.statusCode);
    }
  }

}