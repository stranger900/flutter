import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dialog extends StatefulWidget {
  static const String id = 'welcome_screen';
  @override
  _DialogState createState() => _DialogState();
}

class _DialogState extends State<Dialog> {
  @override
  Widget build(BuildContext context) {

    var headersize = MediaQuery.of(context).size.height;
    return Scaffold(

      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            Container(

              padding: EdgeInsets.only(top: 30),
              height: headersize / 2 * 0.4,
              color: Color(0xFFE69601),
              child: Column(

                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      FlatButton(onPressed: (){}, child: Icon(Icons.list, color: Colors.white,)),
                      Text('Smart KSK', style: TextStyle(fontSize: 20, color: Colors.white,fontWeight: FontWeight.bold),),
                      FlatButton(onPressed: (){}, child: Icon(Icons.share, color: Colors.white)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      FlatButton(onPressed: (){}, child: Icon(Icons.phone, color: Colors.white),),
                      FlatButton(onPressed: (){}, child: Icon(Icons.home, color: Colors.white)),
                      FlatButton(onPressed: (){}, child: Icon(Icons.camera_alt, color: Colors.white)),
                      FlatButton(onPressed: (){}, child: Icon(Icons.notifications_active, color: Colors.white)),
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 25,bottom: 15),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RoundedIcons(selectedText:'Открытый диалог', selectedIcon: Icon(Icons.chat, color: Colors.white,size: 35,),),

                ],
              ),
            ),
//            Container(
//              decoration: BoxDecoration(
//                image: DecorationImage(
//                  image: AssetImage("assets/font.jpg"),
//                  fit: BoxFit.cover,
//                ),
//              ),
//            ),
          ],
        ),
      ),
    );
  }
}

class RoundedIcons extends StatelessWidget {
  RoundedIcons({this.selectedText, this.selectedIcon});
  final String selectedText;
  final Icon selectedIcon;

  @override
  Widget build(BuildContext context) {
    return Container(alignment: Alignment.center,
      width: 80,
      child: Column(
        children: <Widget>[
          ClipOval(
            child: Material(

              color: Colors.amber, // button color
              child: InkWell(
                splashColor: Colors.orangeAccent, // inkwell color
                child: SizedBox(width: 70, height: 70, child: selectedIcon/*Icon(Icons.info, color: Colors.white,size: 35,)*/),
                onTap: () {
                  //Navigator.push(context, MaterialPageRoute(builder: (context) => onTap));
                  //Navigator.push(context, MaterialPageRoute(builder: (context) => SelectScreen()));
                },
              ),
            ),
          ),
          SizedBox(height: 10,),
          Text(selectedText,style: TextStyle(fontSize: 13),textAlign: TextAlign.center,)
        ],
      ),
    );
  }
}
