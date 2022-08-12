import 'package:flutter/material.dart';
import 'package:project_uas/pages/models/city.dart';
import 'package:project_uas/pages/models/space.dart';
import 'package:project_uas/pages/models/tips.dart';
import 'package:project_uas/pages/widgets/city_card.dart';
import 'package:project_uas/pages/widgets/space_card.dart';
import 'package:project_uas/pages/widgets/tips_card.dart';
import 'package:project_uas/theme.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: edge,
          ),
          child: ListView (
            // POPULAR CITY
            children: [
              Padding(
                padding: EdgeInsets.only(left: edge,),
                child: Text( 
                'Explore Now',
                style: blackTextStyle.copyWith(
                  fontSize: 24,
                ),
               ),
              ),
              SizedBox(
                height: 2,
              ),
              Padding(
                padding: EdgeInsets.only(left: edge,),
                child: Text(
                  'Mencari Kosan Yang Cozy',
                  style: greyTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ), 
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.only(left: edge,),
                child: Text(
                  'Popular Cities',
                  style: regulerTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ), 
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(width: 24,),
                    Citycard(
                      City (
                        id: 1,
                        name: 'Jakarta',
                        imageUrl: 'assets/images/city1.png',
                      ),
                    ),
                    SizedBox(width: 20,),
                   Citycard(
                      City (
                        id: 2,
                        name: 'Bandung',
                        imageUrl: 'assets/images/city2.png',
                      ),
                    ),
                    SizedBox(width: 20,),
                    Citycard(
                      City (
                        id: 3,
                        name: 'Surabaya',
                        imageUrl: 'assets/images/city3.png',
                      ),
                    ),
                    SizedBox(width: 24,),
                    Citycard(
                      City (
                        id: 4,
                        name: 'Bogor',
                        imageUrl: 'assets/images/city4.png',
                      ),
                    ),
                    SizedBox(width: 20,),
                    Citycard(
                      City (
                        id: 5,
                        name: 'Cirebon',
                        imageUrl: 'assets/images/city5.png',
                      ),
                    ),
                    SizedBox(width: 20,),
                    Citycard(
                      City (
                        id: 2,
                        name: 'Yogyakarta',
                        imageUrl: 'assets/images/city6.png',
                      ),
                    ),
                    SizedBox(width: 20,),
                    SizedBox(width: 20,),
                  ],
                ),
              ),
              SizedBox(height: 30),
              // RECOMENDED SPACE
              Padding(
                padding: EdgeInsets.only(left: edge,),
                child: Text(
                  'Recomended Space',
                  style: regulerTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ), 
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Column(
                  children: [
                    SpaceCard(
                      Space(
                        id: 1,
                        name: 'Berkah Kost',
                        imageUrl: 'assets/images/space1.png',
                        price: '500.000',
                        city: 'Dago',
                        country: 'Bandung',
                      ),
                    ),
                    SizedBox(height: 30),
                    SpaceCard(
                      Space(
                        id: 2,
                        name: 'Jaya Kost',
                        imageUrl: 'assets/images/space1.png',
                        price: '800.000',
                        city: 'Sudirman',
                        country: 'Jakarta',
                      ),
                    ),
                    SizedBox(height: 30),
                    SpaceCard(
                      Space(
                        id: 3,
                        name: 'Hikmah Kost',
                        imageUrl: 'assets/images/space1.png',
                        price: '400.000',
                        city: 'Cibinong',
                        country: 'Bogor',
                      ),
                    ),
                  ],
                ),
              ),
              // TIPS & GIUDES
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.only(left: edge,),
                child: Text( 
                'Tips & Giudance',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                ),
               ),
              ),
              SizedBox(
                 height: 16,
               ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: edge,
                  ),
                  child: Column(
                    children: [
                      Tipscard(
                        Tips(
                          id: 1,
                          name: 'City Guidelines',
                          imageUrl: 'assets/images/tips1.png',
                          updatedAt: 'Updated 20 Apr',
                        ),
                      ),
                      SizedBox(height: 20,),
                      Tipscard(
                        Tips(
                          id: 2,
                          name: 'Jakarta Fairship',
                          imageUrl: 'assets/images/tips2.png',
                          updatedAt: 'Updated 11 Dec',
                        ),
                      ),
                    ],
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
