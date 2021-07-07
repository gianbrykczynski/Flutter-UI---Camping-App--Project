import 'package:camping_app/pages/home_page.dart';
import 'package:camping_app/themes/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: getBody(),
    );
  }

  Widget getBody() {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SvgPicture.asset('assets/images/welcome_image.svg'),
            Column(
              children: <Widget>[
                Text(
                  'Encontre Seu\n Destino',
                  style: appTitle,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Viva experiências únicas.\nAlugue campins maravilhosos.\nRespire o ar puro e muito mais!',
                  style: TextStyle(
                      color: textWhite.withOpacity(0.8),
                      height: 1.3,
                      fontSize: 15),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: primary,
                  minimumSize: Size(double.infinity, 45),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30))),
              onPressed: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (_) => HomePage()));
              },
              child: Center(
                child: Text(
                  'Explorar Agora',
                  style: TextStyle(color: textWhite, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
