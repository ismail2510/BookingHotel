import 'package:booking_hotels/sonesta_st_george.dart';
import 'package:booking_hotels/thebes_hotel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'al_moudira_hotel.dart';
import 'hilton_luxor_resort_spa.dart';
import 'iberotal_hotel.dart';
import 'maritim_jolie_ville_hotel.dart';


class Luxor_Hotels extends StatelessWidget {
  const Luxor_Hotels({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height=size.height;
    var width=size.width;
    return Scaffold(
      backgroundColor: Colors.white54,
      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(0.8),
        title: Text("Hotels in Luxor"),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=> Sonesta_St_George()));
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 15, left: 8, right: 8),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.brown.withOpacity(0.4),

                    boxShadow: [
                      BoxShadow(


                        color: Colors.white60,
                      )
                    ],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 120,
                        width: width * 0.30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius
                              .circular(20), bottomLeft: Radius.circular(20)),
                          image: DecorationImage(
                              image: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVc-NxEDnKm1W6b2jpUbFF22QDFULh75CUGJx_Oso6eMP2JY6dcETVVDVPRnwn7icCia0&usqp=CAU',

                              ),
                              fit: BoxFit.fill),),

                      ),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 8),
                            child: Text(
                              '1.Sonesta St George',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                          ),
                          SizedBox(height: 14,),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text("Location : Centeral East",
                              style: TextStyle(fontSize: 14),),
                          ),
                          SizedBox(height: 15,),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text("Guest Rating :"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.orange,
                                ),
                                Text(
                                  '9.7',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  ' (2500+)',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal),
                                ),
                                Text(
                                  ' very good..',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=> Maritim_Jolie_Ville_Hotel()));
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 15, left: 8, right: 8),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.brown.withOpacity(0.4),

                    boxShadow: [
                      BoxShadow(


                        color: Colors.white60,
                      )
                    ],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 120,
                        width: width * 0.30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius
                              .circular(20), bottomLeft: Radius.circular(20)),
                          image: DecorationImage(
                              image: NetworkImage(
                                'https://q-xx.bstatic.com/xdata/images/hotel/840x460/227581204.jpg?k=a5bf3c447706fe84d182b3ca19c4085c2897ac71b02b558b0e2d724ba4740675&o=',

                              ),
                              fit: BoxFit.fill),),

                      ),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 8),
                            child: Text(
                              '2.Maritim Jolie Ville Hotel',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                          ),
                          SizedBox(height: 14,),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text("Location : Centeral East",
                              style: TextStyle(fontSize: 14),),
                          ),
                          SizedBox(height: 15,),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text("Guest Rating :"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.orange,
                                ),
                                Text(
                                  '9.6',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  ' (2300+)',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal),
                                ),
                                Text(
                                  ' very good..',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=> Hilton_Luxor_Resort_Spa()));
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 15, left: 8, right: 8),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.brown.withOpacity(0.4),

                    boxShadow: [
                      BoxShadow(


                        color: Colors.white60,
                      )
                    ],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 120,
                        width: width * 0.30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius
                              .circular(20), bottomLeft: Radius.circular(20)),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/25/3a/0e/80/exterior.jpg?w=700&h=-1&s=1'
                              ),
                              fit: BoxFit.fill),),

                      ),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 8),
                            child: Text(
                              '3.Hilton Luxor Resort & Spa',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                          ),
                          SizedBox(height: 14,),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text("Location : Centeral west",
                              style: TextStyle(fontSize: 14),),
                          ),
                          SizedBox(height: 15,),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text("Guest Rating :"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.orange,
                                ),
                                Text(
                                  '9.5',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  ' (2200+)',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal),
                                ),
                                Text(
                                  ' very good..',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=> Iberotal_Hotel()));
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 15, left: 8, right: 8),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.brown.withOpacity(0.4),

                    boxShadow: [
                      BoxShadow(


                        color: Colors.white60,
                      )
                    ],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 120,
                        width: width * 0.30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius
                              .circular(20), bottomLeft: Radius.circular(20)),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://media-cdn.tripadvisor.com/media/photo-s/21/d8/33/bf/outdoor-pool-night-view.jpg'
                              ),
                              fit: BoxFit.fill),),

                      ),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 8),
                            child: Text(
                              '4.Iberotal Hotel',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                          ),
                          SizedBox(height: 14,),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text("Location : Centeral",
                              style: TextStyle(fontSize: 14),),
                          ),
                          SizedBox(height: 15,),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text("Guest Rating :"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.orange,
                                ),
                                Text(
                                  '9.3',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  ' (2000+)',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal),
                                ),
                                Text(
                                  ' very good..',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=> Al_Moudira_Hotel()));
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 15, left: 8, right: 8),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.brown.withOpacity(0.4),

                    boxShadow: [
                      BoxShadow(


                        color: Colors.white60,
                      )
                    ],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 120,
                        width: width * 0.30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius
                              .circular(20), bottomLeft: Radius.circular(20)),
                          image: DecorationImage(
                              image: NetworkImage(
                                'https://media-cdn.tripadvisor.com/media/photo-s/02/4e/9b/3e/the-swimmingpool-and.jpg',

                              ),
                              fit: BoxFit.fill),),

                      ),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 8),
                            child: Text(
                              '5.Al-Moudira Hotel',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                          ),
                          SizedBox(height: 14,),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text("Location : North East",
                              style: TextStyle(fontSize: 14),),
                          ),
                          SizedBox(height: 15,),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text("Guest Rating :"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.orange,
                                ),
                                Text(
                                  '8.0',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  ' (1800+)',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal),
                                ),
                                Text(
                                  '  good..',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=> Thebes_Hotel()));
              },
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 15, left: 8, right: 8, bottom: 15),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.brown.withOpacity(0.4),

                    boxShadow: [
                      BoxShadow(


                        color: Colors.white60,
                      )
                    ],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 120,
                        width: width * 0.30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius
                              .circular(20), bottomLeft: Radius.circular(20)),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://q-xx.bstatic.com/xdata/images/hotel/840x460/305455867.jpg?k=7509b0cdacdabdc161d02d3cdad0ba2f9c2697510b68bd253a80c9cc100673f0&o='
                              ),
                              fit: BoxFit.fill),),

                      ),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 8),
                            child: Text(
                              '6.Thebes Hotel',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                          ),
                          SizedBox(height: 14,),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text("Location : Centeral East",
                              style: TextStyle(fontSize: 14),),
                          ),
                          SizedBox(height: 15,),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text("Guest Rating :"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.orange,
                                ),
                                Text(
                                  '9.0',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  ' (2000+)',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal),
                                ),
                                Text(
                                  ' very good..',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}