import 'package:camping_app/themes/constant.dart';
import 'package:flutter/material.dart';

class CardDestination extends StatelessWidget {
  final String? srcImg;
  final String? perNight;
  final String? title;
  final String? subTitile;
  final String? reviews;

  const CardDestination({
    Key? key,
    this.srcImg,
    this.perNight,
    this.title,
    this.subTitile,
    this.reviews,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 280,
          width: 200,
          decoration: BoxDecoration(
            color: textWhite,
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: NetworkImage(srcImg!),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: <Widget>[
              Container(
                height: 280,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    colors: [
                      textBlack.withOpacity(0.9),
                      textBlack.withOpacity(0.0),
                    ],
                    begin: FractionalOffset(0, 1),
                    end: FractionalOffset(0, 0),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: primary,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            perNight!,
                            style: TextStyle(color: textWhite),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Column(
                        children: <Widget>[
                          Text(
                            title!,
                            style: TextStyle(
                                color: textWhite,
                                fontWeight: FontWeight.w100,
                                fontSize: 14),
                          ),
                          SizedBox(height: 5),
                          Text(
                            subTitile!,
                            style: TextStyle(
                              color: textWhite.withOpacity(0.6),
                            ),
                          ),
                          SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.star,
                                color: starColor,
                                size: 18,
                              ),
                              SizedBox(width: 3),
                              Icon(
                                Icons.star,
                                color: starColor,
                                size: 18,
                              ),
                              SizedBox(width: 3),
                              Icon(
                                Icons.star,
                                color: starColor,
                                size: 18,
                              ),
                              SizedBox(width: 3),
                              Icon(
                                Icons.star,
                                color: starColor,
                                size: 18,
                              ),
                              SizedBox(width: 3),
                              Icon(
                                Icons.star,
                                color: starColor,
                                size: 18,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            reviews!,
                            style: TextStyle(
                              color: textWhite.withOpacity(0.6),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
