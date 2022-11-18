import 'package:flutter/material.dart';

import 'hotel1.dart';
import 'hotel2.dart';
import 'hotel3.dart';
import 'hotel4.dart';
import 'hotel5.dart';
import 'hotel6.dart';

class HotelsCairo extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.8),
      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(0.8),
        title: Text("Hotels in cairo"),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=> Hotel1(name:'Fairmont Nile City')));
              },
              child: Padding(
                padding: const EdgeInsets.only(top:15,left: 8,right: 8),
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
                        width: size*0.30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20)),
                          image: DecorationImage(
                              image: NetworkImage(
                                'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/21/5e/82/40/exterior-view.jpg?w=1100&h=-1&s=1.jpeg',
                              ),
                              fit: BoxFit.fill),),

                      ),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 8),
                            child: Text(
                              '1.Fairmont Nile City',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                          ),
                          SizedBox(height: 14,),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text("Location : Centeral East",style: TextStyle(fontSize: 14),),
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
                                  style: TextStyle(fontWeight: FontWeight.normal),
                                ),
                                Text(
                                  ' very good..',
                                  style: TextStyle(fontWeight: FontWeight.normal),
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
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=> Hotel2(name:'Cairo Marriot Hotel')));
              },
              child: Padding(
                padding: const EdgeInsets.only(top:15,left: 8,right: 8),
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
                        width: size*0.30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20)),
                          image: DecorationImage(
                              image: NetworkImage(
                                'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1d/c6/74/51/cairo-marriott-hotel.jpg?w=1200&h=-1&s=1',

                              ),
                              fit: BoxFit.fill),),

                      ),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 8),
                            child: Text(
                              '2.Cairo Marriott Hotel ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                          ),
                          SizedBox(height: 14,),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text("Location : Centeral East",style: TextStyle(fontSize: 14),),
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
                                  style: TextStyle(fontWeight: FontWeight.normal),
                                ),
                                Text(
                                  ' very good..',
                                  style: TextStyle(fontWeight: FontWeight.normal),
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
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=> Hotel3(name:'The Regis Almasa')));
              },
              child: Padding(
                padding: const EdgeInsets.only(top:15,left: 8,right: 8),
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
                        width: size*0.30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20)),
                          image: DecorationImage(
                              image: NetworkImage(
                                'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/23/a7/ae/fe/the-st-regis-almasa-hotel.jpg?w=1200&h=-1&s=1',

                              ),
                              fit: BoxFit.fill),),

                      ),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 8),
                            child: Text(
                              '3.The Regis Almasa Hotel',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                          ),
                          SizedBox(height: 14,),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text("Location : Centeral west",style: TextStyle(fontSize: 14),),
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
                                  style: TextStyle(fontWeight: FontWeight.normal),
                                ),
                                Text(
                                  ' very good..',
                                  style: TextStyle(fontWeight: FontWeight.normal),
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
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=> Hotel4(name:'Steigenberger El Tahrir')));
              },
              child: Padding(
                padding: const EdgeInsets.only(top:15,left: 8,right: 8),
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
                        width: size*0.30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20)),
                          image: DecorationImage(
                              image: NetworkImage(
                                'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0f/10/35/ab/steigenberger-hotel-el.jpg?w=1200&h=-1&s=1',

                              ),
                              fit: BoxFit.fill),),

                      ),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 8),
                            child: Text(
                              '4.Steigenberger El Tahrir',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                          ),
                          SizedBox(height: 14,),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text("Location : Centeral",style: TextStyle(fontSize: 14),),
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
                                  style: TextStyle(fontWeight: FontWeight.normal),
                                ),
                                Text(
                                  ' very good..',
                                  style: TextStyle(fontWeight: FontWeight.normal),
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
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=> Hotel5(name:'Radisson Blu Hotel')));              },
              child: Padding(
                padding: const EdgeInsets.only(top:15,left: 8,right: 8),
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
                        width: size*0.30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20)),
                          image: DecorationImage(
                              image: NetworkImage(
                                'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1d/ea/03/a9/exterior.jpg?w=1100&h=-1&s=1',

                              ),
                              fit: BoxFit.fill),),

                      ),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 8),
                            child: Text(
                              '5.Radisson Blu Hotel',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                          ),
                          SizedBox(height: 14,),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text("Location : North East",style: TextStyle(fontSize: 14),),
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
                                  style: TextStyle(fontWeight: FontWeight.normal),
                                ),
                                Text(
                                  '  good..',
                                  style: TextStyle(fontWeight: FontWeight.normal),
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
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=> Hotel6(name:'Sonesta Hotel')));
              },
              child: Padding(
                padding: const EdgeInsets.only(top:15,left: 8,right: 8, bottom: 15),
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
                        width: size*0.30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20)),
                          image: DecorationImage(
                              image: NetworkImage(
                                'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1d/1e/58/1c/exterior.jpg?w=1100&h=-1&s=1',

                              ),
                              fit: BoxFit.fill),),

                      ),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 8),
                            child: Text(
                              '6.Sonesta Hotel',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                          ),
                          SizedBox(height: 14,),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text("Location : Centeral East",style: TextStyle(fontSize: 14),),
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
                                  style: TextStyle(fontWeight: FontWeight.normal),
                                ),
                                Text(
                                  ' very good..',
                                  style: TextStyle(fontWeight: FontWeight.normal),
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
