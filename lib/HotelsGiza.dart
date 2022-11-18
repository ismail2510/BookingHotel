import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'hotel_giza1.dart';
import 'hotel_giza2.dart';
import 'hotel_giza3.dart';
import 'hotel_giza4.dart';
import 'hotel_giza5.dart';
import 'hotel_giza6.dart';

class Giza_Hotels extends StatelessWidget {
  const Giza_Hotels({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.8),
      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(0.8),
        title: Text("Hotels in Giza"),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=>Pyramids_Valley_Hotel ()));
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
                        width: size * 0.30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius
                              .circular(20), bottomLeft: Radius.circular(20)),
                          image: DecorationImage(
                              image: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSngR4VOrenHLduRnB-fl_fDdFPvk54JSJxE8uZXDdIPSWBBXpIPjxYVvTbdl2-5WYk18Y&usqp=CAU',

                              ),
                              fit: BoxFit.fill),),

                      ),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 8),
                            child: Text(
                              '1.Pyramids Valley',
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
                Navigator.push(context, MaterialPageRoute(builder: (_)=> Giza_Pyramids_Inn()));

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
                        width: size * 0.30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius
                              .circular(20), bottomLeft: Radius.circular(20)),
                          image: DecorationImage(
                              image: NetworkImage(
                                'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/19/de/52/12/roof-top-restaurant.jpg?w=700&h=-1&s=1',

                              ),
                              fit: BoxFit.fill),),

                      ),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 8),
                            child: Text(
                              '2.Giza Pyramids Inn ',
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
                Navigator.push(context, MaterialPageRoute(builder: (_)=> Pyramids_Planet()));
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
                        width: size * 0.30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius
                              .circular(20), bottomLeft: Radius.circular(20)),
                          image: DecorationImage(
                              image: NetworkImage(
                                'https://cf.bstatic.com/xdata/images/hotel/max500/295936765.jpg?k=059b489f211ca31420ab95a77e05b7ec02367f1dbba430ba85c27ddf7fc1eea8&o=&hp=1',

                              ),
                              fit: BoxFit.fill),),

                      ),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 8),
                            child: Text(
                              '3.Pyramids Planet',
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
                Navigator.push(context, MaterialPageRoute(builder: (_)=> Grand_Pyramids()));
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
                        width: size * 0.30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius
                              .circular(20), bottomLeft: Radius.circular(20)),
                          image: DecorationImage(
                              image: NetworkImage(
                                'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1300,q_auto,w_2000/itemimages/22/13/221321_v2.jpeg',

                              ),
                              fit: BoxFit.fill),),

                      ),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 8),
                            child: Text(
                              '4.Grand Pyramids',
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
                Navigator.push(context, MaterialPageRoute(builder: (_)=> Magic_Pyramids_Inn()));
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
                        width: size * 0.30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius
                              .circular(20), bottomLeft: Radius.circular(20)),
                          image: DecorationImage(
                              image: NetworkImage(
                                'https://q-xx.bstatic.com/xdata/images/hotel/840x460/279932162.jpg?k=7fe07005ad728d1edb13757774223c5999ca850039a091b97c9386853dc2d6e4&o=',

                              ),
                              fit: BoxFit.fill),),

                      ),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 8),
                            child: Text(
                              '5.Magic Pyramids Inn',
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
                Navigator.push(context, MaterialPageRoute(builder: (_)=> Sahara_Pyramids_Inn()));
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
                        width: size * 0.30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius
                              .circular(20), bottomLeft: Radius.circular(20)),
                          image: DecorationImage(
                              image: NetworkImage(
                                'https://q-xx.bstatic.com/xdata/images/hotel/840x460/225803518.jpg?k=7d375ddf2cdda48301e75ca9b3d0ea043ad9a929f95fa431a03a40215e49208b&o=',

                              ),
                              fit: BoxFit.fill),),

                      ),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 8),
                            child: Text(
                              '6.Sahara Pyramids Inn',
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