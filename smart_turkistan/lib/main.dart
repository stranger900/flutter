import 'package:flutter/material.dart';
import './welcome_page.dart';

void main() {
  return runApp(
      MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    ),);

}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool qaz = false;
  bool kaz = false;
  bool rus = true;
  bool eng = false;
  String forDateLang = "ru";
  @override
  void setChecked(String lang) {
    setState(() {
      if (lang == "qaz") {
        qaz = true;
        kaz = false;
        rus = false;
        eng = false;
        forDateLang = 'kk';
      } else if (lang == "kaz") {
        qaz = false;
        kaz = true;
        rus = false;
        eng = false;
        forDateLang = 'kk';
      } else if (lang == "rus") {
        qaz = false;
        kaz = false;
        rus = true;
        eng = false;
        forDateLang = 'ru';
      } else if (lang == "eng") {
        qaz = false;
        kaz = false;
        rus = false;
        eng = true;
        forDateLang = 'en';
      }

    });
  }
  Widget build(BuildContext context) {
    bool pressed = true;
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/st.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(height: 30,),
            Container(
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: TextField(style: TextStyle(color: Colors.white, fontSize: 20),
                      onChanged: (value){
                        //TODO TextField
                      print(value);
                      },
                      cursorColor: Colors.white,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                          hintText: '+7(***)***-**-**',
                          hintStyle: TextStyle(color: Colors.white),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),)
                      ),
                    ),
                  ),
                  RaisedButton(
                      padding: EdgeInsets.all(0.0),
                    shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),

                    onPressed: () {
                        //TODO Button "Получить SMS-код"
                      Navigator.push(context,  MaterialPageRoute(builder: (context) => WelcomeScreen()));
                    },

                    textColor: Colors.white,
                    child:  Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[Color(0xFFFFCF2A), Color(0xFFFF9F08)],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(80.0))
                      ),
                      padding: EdgeInsets.fromLTRB(80, 10, 80, 10),
                      child: Text('Получить SMS-код',  style: TextStyle(fontSize: 18),),
                  ),
                  ),
                  FlatButton(
                      onPressed: (){
                        //TODO Button 'У меня уже есть SMS-код'
                      },
                      child: Text('У меня уже есть SMS-код',  style: TextStyle(color: Colors.white),)),


                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, bottom: 30, right: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: InkWell(
                      child: Text("QAZ",
                          style: TextStyle(
                            color: qaz
                                ? Colors.yellow
                                : Colors.white,
                            fontWeight: FontWeight.bold,
                          )),
                      onTap: () {
                        setState(() {
                          setChecked("qaz");
                        });

                        //setChecked("qaz");
                        //languageSetted("qaz");
                      },
                    ),
                  ),
                  Container(
                    child: InkWell(
                      child: Text("ҚАЗ",
                          style: TextStyle(
                            color: kaz
                                ? Colors.yellow
                                : Colors.white,
                            fontWeight: FontWeight.bold,
                          )),
                      onTap: () {
                        setChecked("kaz");

                      },
                    ),
                  ),
                  Container(
                    child: InkWell(
                      child: Text("РУС",
                          style: TextStyle(
                            color: rus
                                ? Colors.yellow
                                : Colors.white,
                            fontWeight: FontWeight.bold,
                          )),
                      onTap: () {
                        setChecked("rus");

                      },
                    ),
                  ),
                  Container(
                    child: InkWell(
                      child: Text("ENG",
                          style: TextStyle(
                            color: eng
                                ? Colors.yellow
                                : Colors.white,
                            fontWeight: FontWeight.bold,
                          )),
                      onTap: () {
                        setChecked("eng");

                      },
                    ),
                  ),
//                  FlatButton(
//
//                    child: Text('QAZ',  style: pressed ? TextStyle(color:  Colors.red) : TextStyle(color: Colors.white),),
//                      onPressed: (){
//                        //TODO Button 'QAZ'
//                        setState(() {
//                          pressed = !pressed;
//                        });
//                        Navigator.push(context,  MaterialPageRoute(builder: (context) => WelcomeScreen()),
//                        );
//                      },
//
//                  ),
//                  FlatButton(
//                      onPressed: (){
//
//                        //TODO Button 'ҚАЗ'
//                      },
//                      child: Text('ҚАЗ',  style: TextStyle(color: Colors.white),)),
//                  FlatButton(
//                      onPressed: (){
//                        //TODO Button 'РУС'
//                      },
//                      child: Text('РУС',  style: TextStyle(color: Colors.white),)),
//                  FlatButton(
//                      onPressed: (){
//                        //TODO Button 'ENG'
//                      },
//                      child: Text('ENG',  style: TextStyle(color: Colors.white),)),
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}

