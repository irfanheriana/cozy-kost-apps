import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_uas/pages/widgets/facility_item.dart';
import 'package:project_uas/theme.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPage extends StatelessWidget {

  launchUrl(String url) async{
    if(await canLaunch(url)){
      launch(url);
    }
    else {
      throw(url);
    }
  }

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: whiteColor,
       body: SafeArea(
         bottom: false,
         child: Stack(
           children : [
             Image.asset(
               'assets/images/city3.png',
               width: MediaQuery.of(context).size.width,
               height: 350,
               fit: BoxFit.cover,
             ),
             
             ListView(
               children: [
                 SizedBox(
                   height: 328,
                 ),
                 Container(
                   width: MediaQuery.of(context).size.width,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.vertical(
                       top: Radius.circular(20),
                     ),
                   color: whiteColor,
                   ),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       SizedBox(height: 30,),
                      //  TITLE
                       Padding(
                         padding: EdgeInsets.symmetric(
                           horizontal: edge,
                         ),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text(
                                   'Berkah Kost',
                                   style: blackTextStyle.copyWith(
                                     fontSize: 22,
                                   ),
                                 ),
                                 SizedBox(height: 2),
                                 Text.rich(
                                  TextSpan(
                                    text: '\Rp 500.000',
                                    style: purpleTextStyle.copyWith(
                                      fontSize: 16,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: ' / month',
                                        style: greyTextStyle.copyWith(
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                               ],
                             ),
                             Row(
                               children: [
                                 Image.asset(
                                   'assets/images/star.png',
                                   width: 20,
                                 ),
                                 SizedBox(width: 2),
                                 Image.asset(
                                   'assets/images/star.png',
                                   width: 20,
                                 ),
                                 SizedBox(width: 2),
                                 Image.asset(
                                   'assets/images/star.png',
                                   width: 20,
                                 ),
                                 Image.asset(
                                   'assets/images/star.png',
                                   width: 20,
                                 ),
                                 SizedBox(width: 2),
                                 Image.asset(
                                   'assets/images/star.png',
                                   width: 20,
                                   color: greyColor,
                                 ),
                               ],
                             ),
                           ],
                         ),
                       ),
                       SizedBox(height: 30),
                      //  FACILITIES
                        Padding(
                        padding: EdgeInsets.only(left: edge,),
                        child: Text(
                          'Facilities',
                          style: regulerTextStyle.copyWith(
                            fontSize: 16,
                          ),
                        ), 
                      ),
                      SizedBox(height: 12,),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: edge,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FacilityItem(
                              name: ' Kitchen',
                              imageUrl: 'assets/images/icon_kitchen.png',
                              total: 2,
                            ),
                            FacilityItem(
                              name: ' Bedroom',
                              imageUrl: 'assets/images/icon_bedroom.png',
                              total: 3,
                            ),
                            FacilityItem(
                              name: ' Lemari',
                              imageUrl: 'assets/images/icon_lemari.png',
                              total: 3,
                            ),
                          ],                          
                        ),
                        ),
                        SizedBox(height: 30,),
                        // PHOTO
                        Padding(
                        padding: EdgeInsets.only(left: edge,),
                        child: Text(
                          'Photos',
                          style: regulerTextStyle.copyWith(
                            fontSize: 16,
                          ),
                        ), 
                      ),
                      SizedBox(height: 12),
                      Container(
                        height: 88,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                          SizedBox(width: edge),
                          Image.asset(
                          'assets/images/photo1.png',
                          width: 110,
                          height: 88,
                          fit: BoxFit.cover,
                          ),
                          SizedBox(width: 18),
                          Image.asset(
                          'assets/images/photo2.png',
                          width: 110,
                          height: 88,
                          fit: BoxFit.cover,
                          ),
                          SizedBox(width: 18),
                          Image.asset(
                          'assets/images/photo3.png',
                          width: 110,
                          height: 88,
                          fit: BoxFit.cover,
                          ),
                          SizedBox(width: edge),
                         ],
                        ),
                      ),
                      SizedBox(height: 30,),
                      Padding(
                        padding: EdgeInsets.only(left: edge),
                        child: Text(
                          'Location',
                          style: regulerTextStyle.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      SizedBox(height: 6,),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Jl. Asia Afrika No. 69 \n Bandung',
                              style: greyTextStyle,
                            ),
                            InkWell(
                              onTap: (){
                                launch('https://goo.gl/maps/H1mFi4dGnq8LgX7t5');
                              },
                              child: Image.asset(
                                'assets/images/btn_map.png',
                                width: 40,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 40,),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: edge),
                            height: 50,
                            width: MediaQuery.of(context).size.width - (2*edge),
                            child: RaisedButton(
                              onPressed: () {
                                launch('https://goo.gl/maps/H1mFi4dGnq8LgX7t5');
                                
                              },
                              color: purpleColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(17),
                              ),
                              child: Text(
                                'Book Now',
                                style: whiteTextStyle.copyWith(
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 40,),
                     ],
                    ),
                 ),
               ],
             ),
           Padding(
               padding: EdgeInsets.symmetric(
                 horizontal: edge,
                 vertical: 30,
               ),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   InkWell(
                     onTap: () {
                       Navigator.pop(context);
                     },
                     child: Image.asset(
                       'assets/images/btn_back.png',
                       width: 40,
                       ),
                   ),
                     Image.asset(
                     'assets/images/btn_wishlist.png',
                     width: 40,
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