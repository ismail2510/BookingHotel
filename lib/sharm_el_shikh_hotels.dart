import 'package:booking_hotels/sharm_1.dart';
import 'package:booking_hotels/sharm_2.dart';
import 'package:booking_hotels/sharm_3.dart';
import 'package:booking_hotels/sharm_4.dart';
import 'package:booking_hotels/sharm_5.dart';
import 'package:booking_hotels/sharm_6.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Sharm_El_Shikh_Hotels extends StatelessWidget {
  const Sharm_El_Shikh_Hotels({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white54,
      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(0.8),
        title: Text("Hotels in Sharm El-Shikh"),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=> Albatros_Royal_Grand_Hotel()));
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
                                'https://cf.bstatic.com/xdata/images/hotel/max500/353474300.jpg?k=84a844a31cccfa2524f8666171bbfd3b0bfad5b2c1e09680d999c59e8eadbb95&o=&hp=1',

                              ),
                              fit: BoxFit.fill),),

                      ),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 8),
                            child: Text(
                              '1.Albatros Royal Grand',
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
                Navigator.push(context, MaterialPageRoute(builder: (_)=> Domina_Coral_Pay()));
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
                                'https://cf.bstatic.com/xdata/images/hotel/max1024x768/331572805.jpg?k=a66ce99d1b312961928dc8abf1b3b77bc41b88c9ee1078ca5a2c161d8312f8a0&o=&hp=1',

                              ),
                              fit: BoxFit.fill),),

                      ),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 8),
                            child: Text(
                              '2.Domina Coral Bay ',
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
                Navigator.push(context, MaterialPageRoute(builder: (_)=> Laguna_Vista_Beach_Resort()));
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
                                'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1c/fe/08/3b/laguna-vista-beach-resort.jpg?w=700&h=-1&s=1',

                              ),
                              fit: BoxFit.fill),),

                      ),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 8),
                            child: Text(
                              '3.Laguna Vista Beach Resort',
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
                Navigator.push(context, MaterialPageRoute(builder: (_)=> Savoy()));
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
                                'https://media-cdn.tripadvisor.com/media/photo-s/1c/20/b4/7a/savoy-sharm-el-sheikh.jpg',

                              ),
                              fit: BoxFit.fill),),

                      ),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 8),
                            child: Text(
                              '4.Savoy',
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
                Navigator.push(context, MaterialPageRoute(builder: (_)=> Falcon_Hills()));
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
                                'https://cf.bstatic.com/xdata/images/hotel/max1024x768/301894038.jpg?k=43dc4f2cc23a239c99f148f9a7397354cfae1a6a9aa5d1d5b12cf133a9cd8370&o=&hp=1',

                              ),
                              fit: BoxFit.fill),),

                      ),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 8),
                            child: Text(
                              '5.Falcon Hills',
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
                Navigator.push(context, MaterialPageRoute(builder: (_)=> Jaz_Fanara_Resort()));
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
                                'https://media-cdn.tripadvisor.com/media/photo-s/18/f8/cb/5c/jaz-fanara-resort.jpg',

                              ),
                              fit: BoxFit.fill),),

                      ),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 8),
                            child: Text(
                              '6.Jaz Fanara Resort',
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