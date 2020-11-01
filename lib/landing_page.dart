import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';



class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          const Color(0xff4568DC),
          const Color(0xffB06AB3),
          const Color(0xff736EFE),
        ])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 90,
              backgroundImage: AssetImage(
                'images/my_face.jpeg',
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Mohit Kumar Gautam",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontFamily: 'sample',


              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "BTech: REC Sonbhadra ",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'sample',
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Computer Science & Engineering",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'sample',
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Connect With Me",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'sample',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(
                    colors: [const Color(0xff70F570), const Color(0xff49C628)],
                  )),
              margin: EdgeInsets.only(left: 650, right: 650),
              padding: EdgeInsets.only(top: 2, bottom: 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.phone,
                    color: Colors.white,
                  ),
                  Text(
                    " 8932923831",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'sample',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    _launchURL("https://www.facebook.com/mohit17415");
                  },
                  child: Image.asset(
                    "images/one.png",
                    height: 50,
                    width: 50,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {
                    _launchURL("https://github.com/gautam2021");
                  },
                  child: Image.asset(
                    "images/two.png",
                    height: 50,
                    width: 50,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {
                    _launchURL(
                        "https://www.linkedin.com/in/mohit-kumar-gautam-a689a0158/");
                  },
                  child: Image.asset(
                    "images/three.png",
                    height: 50,
                    width: 50,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(width: 20,),
                Text(" Made",style: TextStyle(color: Colors.white,fontSize: 18,fontFamily: 'sample',),),
                SizedBox(
                  width: 10,
                ),
                Image.asset("images/four.png",height: 45,width: 45,),
                SizedBox(width: 10,),
                Text("By Mohit",style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'sample',)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
