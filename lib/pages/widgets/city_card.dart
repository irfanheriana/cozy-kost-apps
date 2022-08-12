import 'package:flutter/material.dart';
import 'package:project_uas/pages/models/city.dart';
import 'package:project_uas/theme.dart';

class Citycard extends StatelessWidget {

  final City city;
  Citycard (this.city);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Container(
        height: 150,
        width: 120,
        color: Color(0xffF6F7F8),
        child: Column(
          children: [
            Image.asset(
              city.imageUrl,
              width: 120,
              height: 102,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 11,
            ),
            Text(
              city.name,
              style: blackTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
