import 'package:camping_app/themes/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardDiscover extends StatelessWidget {
  final String? imgSrc;
  final String? label;

  const CardDiscover({
    Key? key,
    this.imgSrc,
    this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 140,
      decoration: BoxDecoration(
        color: textWhite,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SvgPicture.asset(imgSrc!),
            Text(
              label!,
              style: TextStyle(
                color: textBlack.withOpacity(0.9),
              ),
            )
          ],
        ),
      ),
    );
  }
}
