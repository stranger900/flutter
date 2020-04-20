import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_turkistan/resourses/smart_turklistan_icons.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    final double height = 112;
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
                      FlatButton(onPressed: (){
                        Navigator.push(context,  MaterialPageRoute(builder: (context) => Dialog()));
                      }, child: Icon(Icons.phone, color: Colors.white)),
                      FlatButton(onPressed: (){}, child: Icon(Icons.home, color: Colors.white)),
                      FlatButton(onPressed: (){}, child: Icon(Icons.camera_alt, color: Colors.white)),
                      FlatButton(onPressed: (){}, child: Icon(Icons.notifications_active, color: Colors.white)),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: height,
              //padding: EdgeInsets.only(top: 15,),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  IconsMainPage(
                    selectedOnTap:  () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Dialog()));
                    },
                    selectedText:'Открытый диалог',
                    selectedIcon: Icon(Icons.chat, color: Colors.white,size: 35,),
                  ),
                  IconsMainPage(selectedOnTap: () {}, selectedText:'Виртуальная приемная', selectedIcon: Icon(Icons.assignment, color: Colors.white,size: 35,),),
                  IconsMainPage(selectedOnTap: () {}, selectedText:'Рейтинг', selectedIcon: Icon(Icons.assessment, color: Colors.white,size: 35,),),
                ],
              ),
            ),
            Container(
              height: height,
              padding: EdgeInsets.only(top: 5,),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,//AssetImage("assets/monitoring_tsen.png")
                children: <Widget>[
                  IconsMainPage(selectedOnTap:  () {}, selectedText:'Мониторинг цен', selectedIcon: Icon( SmartTurklistan.monitoring_tsen, color: Colors.white, size: 28,),),
                  IconsMainPage(selectedOnTap: () {}, selectedText:'Опросы', selectedIcon: Icon(SmartTurklistan.opros, color: Colors.white,size: 35,),),
                  IconsMainPage(selectedOnTap: () {}, selectedText:'Народный контроль', selectedIcon: Icon(Icons.photo_camera, color: Colors.white,size: 35,),),
                ],
              ),
            ),
            Container(
              height: height,
              padding: EdgeInsets.only(top: 5,),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,//AssetImage("assets/monitoring_tsen.png")
                children: <Widget>[
                  IconsMainPage(selectedOnTap:  () {}, selectedText:'Такси', selectedIcon: Icon( SmartTurklistan.taxi_sign__1_, color: Colors.white, size: 20,),),
                  IconsMainPage(selectedOnTap: () {}, selectedText:'Базар', selectedIcon: Icon(SmartTurklistan.shopping_bag, color: Colors.white,size: 35,),),
                  IconsMainPage(selectedOnTap: () {}, selectedText:'3Д-тур', selectedIcon: Icon(SmartTurklistan.ddd, color: Colors.white,size: 35,),),
                ],
              ),
            ),

            Container(
              height: height,
              padding: EdgeInsets.only(top: 5,),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,//AssetImage("assets/monitoring_tsen.png")
                children: <Widget>[
                  IconsMainPage(selectedOnTap:  () {}, selectedText:'Активный гражданин', selectedIcon: Icon( Icons.record_voice_over, color: Colors.white, size: 35,),),
                  IconsMainPage(selectedOnTap: () {}, selectedText:'Очередь на жилье', selectedIcon: Icon(SmartTurklistan.home, color: Colors.white,size: 35,),),
                  IconsMainPage(selectedOnTap: () {}, selectedText:'Участковые', selectedIcon: Icon(SmartTurklistan.police, color: Colors.white,size: 35,),),
                ],
              ),
            ),
            Container(
              height: height,
              padding: EdgeInsets.only(top: 5,left: 30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,//AssetImage("assets/monitoring_tsen.png")
                children: <Widget>[
                  IconsMainPage(selectedOnTap:  () {}, selectedText:'Активный гражданин', selectedIcon: Icon( SmartTurklistan.tenge, color: Colors.white, size: 35,),),

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

class IconsMainPage extends StatelessWidget {
  IconsMainPage({this.selectedText, this.selectedIcon, this.selectedOnTap});
  final String selectedText;
  final Widget selectedIcon;
  Function selectedOnTap;
  @override
  Widget build(BuildContext context) {
    return Container(alignment: Alignment.center,
      width: 80,
      child: Column(
        children: <Widget>[
          ClipOval(
            child: Material(

              color: Color(0xFFE69601), // button color
              child: InkWell(
                splashColor: Colors.orangeAccent, // inkwell color
                child: SizedBox(width: 60, height: 60, child: selectedIcon/*Icon(Icons.info, color: Colors.white,size: 35,)*/),
               onTap: selectedOnTap
    //{
//                  //Navigator.push(context, MaterialPageRoute(builder: (context) => SelectScreen()));
//                },
              ),
            ),
          ),
          SizedBox(height: 5,),
          Text(selectedText,style: TextStyle(fontSize: 13),textAlign: TextAlign.center,)
        ],
      ),
    );
  }
}
