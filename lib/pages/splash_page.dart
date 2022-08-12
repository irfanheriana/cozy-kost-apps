import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:project_uas/pages/home_page.dart';
import 'package:project_uas/theme.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
      bottom: false,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomRight,
            child: Image.asset('assets/images/house.png')
            ),
          Padding(
            padding: EdgeInsets.only(
              top: 50,
              left: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/logo.png'),
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Text(
                  'Find Cozy House \nto Stay and Happy',
                  style: blackTextStyle.copyWith(
                    fontSize: 24,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Stop membuang banyak waktu \npada tempat yang tidak habitable',
                  style: greyTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  width: 210,
                  height: 50,
                  child: RaisedButton(onPressed: (){
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context) => Homepage(),
                      ),
                    );
                  },
                  color: purpleColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(17),
                  ),
                  child: Text(
                    'Login Now',
                    style: whiteTextStyle.copyWith(
                      fontSize: 18,
                    ),
                  ),
                  ),

                ),
              ],
            ),
          ),
        ],
      ),
    ),
   );
  }
} 