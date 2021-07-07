import 'dart:ui';

import 'package:camping_app/pages/welcome_page.dart';
import 'package:camping_app/widgets/card_destionation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:line_icons/line_icons.dart';

import 'package:camping_app/themes/constant.dart';
import 'package:camping_app/widgets/card_discover.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _controllerSearch = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        child: Stack(
          children: <Widget>[
            Container(
              height: size.height * 0.65,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/tree_bg.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => WelcomePage(),
                              ),
                            );
                          },
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: textWhite,
                            size: 20,
                          ),
                        ),
                        SvgPicture.asset('assets/images/burger_icon.svg'),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: [
                            SvgPicture.asset('assets/images/profile_icon.svg'),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Bem Vindo',
                                  style: TextStyle(
                                    color: textWhite.withOpacity(0.7),
                                  ),
                                ),
                                SizedBox(height: 3),
                                Text(
                                  'Gian Cristian',
                                  style: TextStyle(
                                    color: textWhite,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SvgPicture.asset('assets/images/notification_icon.svg'),
                      ],
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 55,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: textWhite,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 30),
                          child: TextField(
                            controller: _controllerSearch,
                            cursorColor: textBlack.withOpacity(0.5),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Procure seu destino',
                              prefixIcon: Icon(
                                LineIcons.search,
                                color: textBlack.withOpacity(0.7),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Explorar Mais',
                          style: TextStyle(
                            color: textWhite,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              CardDiscover(
                                imgSrc: 'assets/images/tent_icon.svg',
                                label: 'Pousadas',
                              ),
                              SizedBox(width: 10),
                              CardDiscover(
                                imgSrc: 'assets/images/fishing_icon.svg',
                                label: 'Pescaria ',
                              ),
                              SizedBox(width: 10),
                              CardDiscover(
                                imgSrc: 'assets/images/cooking_icon.svg',
                                label: 'Comidas Típicas',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: size.height * 0.60),
              width: double.infinity,
              height: 410,
              decoration: BoxDecoration(
                color: textWhite,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60),
                  topRight: Radius.circular(60),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 30, right: 30, bottom: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 20),
                    Align(
                      child: Container(
                        width: 50,
                        height: 4,
                        decoration: BoxDecoration(
                          color: textBlack.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Text(
                      'Mais Populares',
                      style: TextStyle(
                        color: textBlack.withOpacity(0.7),
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          CardDestination(
                            srcImg:
                                'https://st2.depositphotos.com/6544740/9337/i/600/depositphotos_93376372-stock-photo-sunset-over-sea-pier.jpg'
                                    .toString(),
                            perNight: 'Pousada do Mar',
                            title: 'camping',
                            subTitile: 'repouso',
                            reviews: '298 avaliações',
                          ),
                          SizedBox(width: 8),
                          CardDestination(
                            srcImg:
                                'https://cdn.mensagenscomamor.com/content/images/m000134490.jpg?v=0&w=800&h=1122'
                                    .toString(),
                            perNight: 'Riacho do Sol',
                            title: 'passeio',
                            subTitile: 'aventura',
                            reviews: '467 avaliações',
                          ),
                          SizedBox(width: 8),
                          CardDestination(
                            srcImg:
                                'https://www.pousadaesperanca.com.br/ci/assets/uploads/fotos/cabanas/4146d-cabana01.jpg'
                                    .toString(),
                            perNight: 'Cabana do Marfim',
                            title: 'camping',
                            subTitile: 'repouso',
                            reviews: '598 avaliações',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
