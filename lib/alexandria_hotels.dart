import 'package:booking_hotels/alex_1.dart';
import 'package:booking_hotels/alex_2.dart';
import 'package:booking_hotels/alex_3.dart';
import 'package:booking_hotels/alex_5.dart';
import 'package:booking_hotels/alex_6.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Alexandria_Hotels extends StatelessWidget {
  const Alexandria_Hotels({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height=size.height;
    var width=size.width;
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.8),
      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(0.8),
        title: Text("Hotels in Alexandria"),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=> Tolip_Alexandria()));
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
                                'https://cf.bstatic.com/xdata/images/hotel/max1024x768/288644202.jpg?k=5ba38f47744415ee4d072303af89bf69b987e9f15ab3e69dc8c442d085a675d9&o=&hp=1',

                              ),
                              fit: BoxFit.fill),),

                      ),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 8),
                            child: Text(
                              '1.Tolip Hotel',
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
                Navigator.push(context, MaterialPageRoute(builder: (_)=> Four_Seasons_Hotel()));
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
                                'https://cf.bstatic.com/xdata/images/hotel/max1280x900/309415089.jpg?k=0a24083199dd132953865a5934da4df961374c44964996e37dbaa5668b98541a&o=&hp=1',

                              ),
                              fit: BoxFit.fill),),

                      ),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 8),
                            child: Text(
                              '2.Four Seasons Hotel',
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
                Navigator.push(context, MaterialPageRoute(builder: (_)=> Radisson_Blu_Hotel()));
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
                                'https://pix10.agoda.net/hotelImages/31438092/531559456/5ea265097e1fe6841830cfc7f3e3b412.jpg?ce=0&s=1024x768',

                              ),
                              fit: BoxFit.fill),),

                      ),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 8),
                            child: Text(
                              '3.Sunrise Alex Avenue Hotel',
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
                                'https://exp.cdn-hotels.com/hotels/3000000/2520000/2511100/2511070/35c6d367_z.jpg?impolicy=fcrop&w=500&h=333&q=medium',

                              ),
                              fit: BoxFit.fill),),

                      ),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 8),
                            child: Text(
                              '4.Radisson Blu Hotel',
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
                Navigator.push(context, MaterialPageRoute(builder: (_)=> Plaza_Hotel()));
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
                                'https://exp.cdn-hotels.com/hotels/3000000/2890000/2882600/2882572/14b1d2ac_z.jpg?impolicy=fcrop&w=500&h=333&q=medium',

                              ),
                              fit: BoxFit.fill),),

                      ),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 8),
                            child: Text(
                              '5.Plaza Hotel',
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
                Navigator.push(context, MaterialPageRoute(builder: (_)=> Hilton_Alexandria_Green_Plaza()));
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
                                  'https://cf.bstatic.com/xdata/images/hotel/max500/313055959.jpg?k=6737a5758cacadb9b7c530f80fa579ccbf779034c0ce638e07bdafcf917cf7c3&o=&hp=1'
                              ),
                              fit: BoxFit.fill),),

                      ),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 8),
                            child: Text(
                              '6.Hilton Alexandria \n    Green Plaza',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                          ),
                          SizedBox(height: 8),
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