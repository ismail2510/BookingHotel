import 'package:booking_hotels/HotelsCairo.dart';
import 'package:booking_hotels/HotelsGiza.dart';
import 'package:booking_hotels/alexandria_hotels.dart';
import 'package:booking_hotels/luxor_hotels.dart';
import 'package:booking_hotels/more.dart';
import 'package:booking_hotels/sharm_el_shikh_hotels.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget
{
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  late int index;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

  }
  @override
  Widget build(BuildContext context) {
    var size =MediaQuery.of(context).size;
    var height=size.height;
    var width=size.width;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(0.8),
        title: Stack(
          children: <Widget>[
            // Stroked text as border.
            Text(
              'Welcome !',
              style: TextStyle(
                fontSize: 25,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 5
                  ..color = Colors.brown[600]!,
              ),
            ),
            // Solid text as fill.
            Text(
              'Welcome !',
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
              ),
            ),
          ],
        )
      ),
      backgroundColor: Colors.white.withOpacity(0.9),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20,left: 10,bottom: 10,right: 196),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.7),

              boxShadow: [
                BoxShadow(


                  color: Colors.white60,
                )
              ],
              borderRadius: BorderRadius.circular(10),
            ),
            height: 35,
            child:  Center(child: Text("Hotels in Cairo  ",style: TextStyle(
                fontFamily: "Schyler",
                fontSize:20,color: Colors.white,fontWeight: FontWeight.bold),)),
          ),
          Container(
            height: 110,
            child: ListView(scrollDirection: Axis.horizontal,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10,),
                  width: width*0.43,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.brown.withOpacity(0.4),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white60,
                      )
                    ],
                    borderRadius: BorderRadius.circular(10),
                  image:DecorationImage(image: NetworkImage("https://www.cashnewseg.com/wp-content/uploads/2021/02/1AAAA.png")
                  ,fit:BoxFit.fill
                  ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10,),
                  width: width*0.40,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.brown.withOpacity(0.4),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white60,
                      )
                    ],
                    borderRadius: BorderRadius.circular(10),
                    image:DecorationImage(image: NetworkImage("https://dynamic-media-cdn.tripadvisor.com/media/photo-o/07/9a/01/7c/cairo-marriott-hotel.jpg?w=1200&h=-1&s=1")
                        ,fit:BoxFit.fill
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10,),
                  width: width*0.40,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.brown.withOpacity(0.4),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white60,
                      )
                    ],
                    borderRadius: BorderRadius.circular(10),
                    image:DecorationImage(image: NetworkImage("https://dynamic-media-cdn.tripadvisor.com/media/photo-o/03/a9/61/fe/fairmont-cairo-nile-city.jpg?w=1200&h=-1&s=1")
                        ,fit:BoxFit.fill
                    ),
                  ),
                ),

              ],
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 15,left: 190,right: 15),
              height: 28,

              child:  RaisedButton(
                shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(15)),
                child:  Center(
                  child: Text(" View Best Hotels>>",style:GoogleFonts.lato(
                    textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,color: Colors.white
                      ,letterSpacing: 0.5,fontStyle: FontStyle.italic,
                    ),
                  ),),
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=> HotelsCairo()));

                },
                color: Colors.brown,
              )
          ),

          Container(
            margin: EdgeInsets.only(top: 10,left: 10,bottom: 10,right: 196),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.7),

              boxShadow: [
                BoxShadow(


                  color: Colors.white60,
                )
              ],
              borderRadius: BorderRadius.circular(10),
            ),
            height: 35,
            child:  Center(child: Text("Hotels in Giza  ",style: TextStyle(
                fontFamily: "Schyler",
                fontSize:20,color: Colors.white,fontWeight: FontWeight.bold),)),
          ),
          Container(
            height: 110,
            child: ListView(scrollDirection: Axis.horizontal,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10,),
                  width: width*0.43,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.brown.withOpacity(0.4),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white60,
                      )
                    ],
                    borderRadius: BorderRadius.circular(10),
                    image:DecorationImage(image: NetworkImage("https://dynamic-media-cdn.tripadvisor.com/media/photo-o/21/5f/d4/3a/bcai-gast.jpg?w=1100&h=-1&s=1.png")
                        ,fit:BoxFit.fill
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10,),
                  width: width*0.40,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.brown.withOpacity(0.4),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white60,
                      )
                    ],
                    borderRadius: BorderRadius.circular(10),
                    image:DecorationImage(image: NetworkImage("https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/29/ab/0f/sonesta-cairo-hotel.jpg?w=1000&h=-1&s=1")
                        ,fit:BoxFit.fill
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10,),
                  width: width*0.40,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.brown.withOpacity(0.4),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white60,
                      )
                    ],
                    borderRadius: BorderRadius.circular(10),
                    image:DecorationImage(image: NetworkImage("https://dynamic-media-cdn.tripadvisor.com/media/photo-o/21/5f/d4/9c/lobby.jpg?w=1100&h=-1&s=1")
                        ,fit:BoxFit.fill
                    ),
                  ),
                ),

              ],
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 15,left: 190,right: 15),
              height: 28,

              child:  RaisedButton(
                shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(15)),
                child:  Center(
                  child: Text(" View Best Hotels>>",style:GoogleFonts.lato(
                    textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,color: Colors.white
                      ,letterSpacing: 0.5,fontStyle: FontStyle.italic,
                    ),
                  ),
                    ),
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=> Giza_Hotels()));
                },
                color: Colors.brown,
              )
          ),

          Container(
            margin: EdgeInsets.only(top: 10,left: 10,bottom: 10,right: 196),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.7),

              boxShadow: [
                BoxShadow(


                  color: Colors.white60,
                )
              ],
              borderRadius: BorderRadius.circular(10),
            ),
            height: 35,
            child:  Center(child: Text("Hotels in Alex  ",style: TextStyle(
                fontFamily: "Schyler",
                fontSize:20,color: Colors.white,fontWeight: FontWeight.bold),)),
          ),
          Container(
            height: 110,
            child: ListView(scrollDirection: Axis.horizontal,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10,),
                  width: width*0.43,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.brown.withOpacity(0.4),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white60,
                      )
                    ],
                    borderRadius: BorderRadius.circular(10),
                    image:DecorationImage(image: NetworkImage("https://media-cdn.tripadvisor.com/media/photo-s/1e/b6/6e/9f/exterior.jpg")
                        ,fit:BoxFit.fill
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10,),
                  width: width*0.40,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.brown.withOpacity(0.4),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white60,
                      )
                    ],
                    borderRadius: BorderRadius.circular(10),
                    image:DecorationImage(image: NetworkImage("https://cf.bstatic.com/xdata/images/hotel/270x200/288644202.jpg?k=f96181d4bf4694457a6f1d3b60a4d5eb58a3d9fb69eec697a541b08753edc7dc&o=.jpeg")
                        ,fit:BoxFit.fill
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10,),
                  width: width*0.40,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.brown.withOpacity(0.4),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white60,
                      )
                    ],
                    borderRadius: BorderRadius.circular(10),
                    image:DecorationImage(image: NetworkImage("https://cf.bstatic.com/xdata/images/hotel/270x200/301942680.jpg?k=67f5abe85bb847ca46eb3f0b42614be2df8135524b75a6fe7a10e61d99b4c5d2&o=.jpeg")
                        ,fit:BoxFit.fill
                    ),
                  ),
                ),

              ],
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 15,left: 190,right: 15),
              height: 28,

              child:  RaisedButton(
                shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(15)),
                child:  Center(
                  child: Text("View Best Hotels>>",style:GoogleFonts.lato(
                    textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,color: Colors.white
                      ,letterSpacing: 0.5,fontStyle: FontStyle.italic,
                    ),
                  ),),
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=> Alexandria_Hotels()));
                },
                color: Colors.brown,
              )
          ),

          Container(
            margin: EdgeInsets.only(top: 10,left: 10,bottom: 10,right: 196),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.7),

              boxShadow: [
                BoxShadow(


                  color: Colors.white60,
                )
              ],
              borderRadius: BorderRadius.circular(10),
            ),
            height: 35,
            child:  Center(child: Text("Hotels in Luxor  ",style: TextStyle(
                fontFamily: "Schyler",
                fontSize:20,color: Colors.white,fontWeight: FontWeight.bold),)),
          ),
          Container(
            height: 110,
            child: ListView(scrollDirection: Axis.horizontal,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10,),
                  width: width*0.43,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.brown.withOpacity(0.4),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white60,
                      )
                    ],
                    borderRadius: BorderRadius.circular(10),
                    image:DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRE2_A119o8G1PFAP-UOfbJrEa8DNaILsNgsGuiMIp1-hxzqPlnNpmZeoqKKIWRYDcUN8Q&usqp=CAU.jpeg")
                        ,fit:BoxFit.fill
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10,),
                  width: width*0.40,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.brown.withOpacity(0.4),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white60,
                      )
                    ],
                    borderRadius: BorderRadius.circular(10),
                    image:DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgozln-Njqy7qPF6BxIcuea2Ki6BInsx7GWGKIarURVkRZyvl0jHyFk5ZL4R1j8xysn-M&usqp=CAU.jpeg")
                        ,fit:BoxFit.fill
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10,),
                  width: width*0.40,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.brown.withOpacity(0.4),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white60,
                      )
                    ],
                    borderRadius: BorderRadius.circular(10),
                    image:DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSu53Jt7s26ba7kXyMFpdURm4Tq1NzBWXsPUAn8OCdR7WECOxqp3RvxRr1NH1X0RR0I8qo&usqp=CAU.jpeg")
                        ,fit:BoxFit.fill
                    ),
                  ),
                ),

              ],
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 15,left: 190,right: 15),
              height: 28,

              child:  RaisedButton(
                shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(15)),
                child:  Center(
                  child: Text("View Best Hotels>>",style:GoogleFonts.lato(
                    textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,color: Colors.white
                      ,letterSpacing: 0.5,fontStyle: FontStyle.italic,
                    ),
                  ),),
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=> Luxor_Hotels()));
                },
                color: Colors.brown,
              )
          ),

          Container(
            margin: EdgeInsets.only(top: 10,left: 10,bottom: 10,right: 100),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.7),

              boxShadow: [
                BoxShadow(


                  color: Colors.white60,
                )
              ],
              borderRadius: BorderRadius.circular(10),
            ),
            height: 35,
            child:  Center(child: Text(" Hotels in Sharm El-Shikh  ",style: TextStyle(
                fontFamily: "Schyler",
                fontSize:20,color: Colors.white,fontWeight: FontWeight.bold),)),
          ),
          Container(
            height: 110,
            child: ListView(scrollDirection: Axis.horizontal,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10,),
                  width: width*0.43,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.brown.withOpacity(0.4),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white60,
                      )
                    ],
                    borderRadius: BorderRadius.circular(10),
                    image:DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQR6bPsQWocFoTEPwhirBCoyk9Jn_XcoCfLXriaoap7ZyhTS2HlVBRNKTaVUn08BhOJV9c&usqp=CAU.jpeg")
                        ,fit:BoxFit.fill
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10,),
                  width: width*0.40,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.brown.withOpacity(0.4),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white60,
                      )
                    ],
                    borderRadius: BorderRadius.circular(10),
                    image:DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXYx_wVLZ16IDF3XkVNSRYbQHJga3GEUtbwnv9AEt_HZdrX7hBoAJc7RU7yGKi95G4C98&usqp=CAU.jpeg")
                        ,fit:BoxFit.fill
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10,),
                  width: width*0.40,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.brown.withOpacity(0.4),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white60,
                      )
                    ],
                    borderRadius: BorderRadius.circular(10),
                    image:DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9o6RSR6aA0V7GJ6h-cgjuwVQJExwwAj4JagVwmOIEc-SLsQtiKrKXuYyLcFU2HO8e9Es&usqp=CAU.jpeg")
                        ,fit:BoxFit.fill
                    ),
                  ),
                ),

              ],
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 15,left: 190,right: 15),
              height: 28,

              child:  RaisedButton(
                shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(15)),
                child:  Center(
                  child: Text("View Best Hotels>> ",style:GoogleFonts.lato(
                    textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,color: Colors.white
                      ,letterSpacing: 0.5,fontStyle: FontStyle.italic,
                    ),
                  ),),
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=> Sharm_El_Shikh_Hotels()));
                },
                color: Colors.brown,
              )
          ),


          Container(
            margin: EdgeInsets.only(top: 10,left: 10,bottom: 10,right: 196),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.7),

              boxShadow: [
                BoxShadow(


                  color: Colors.white60,
                )
              ],
              borderRadius: BorderRadius.circular(10),
            ),
            height: 35,
            child:  Center(child: Text(" Hotels in Aswan  ",style: TextStyle(
                fontFamily: "Schyler",
                fontSize:20,color: Colors.white,fontWeight: FontWeight.bold),)),
          ),
          Container(
            height: 110,
            child: ListView(scrollDirection: Axis.horizontal,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10,),
                  width: width*0.43,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.brown.withOpacity(0.4),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white60,
                      )
                    ],
                    borderRadius: BorderRadius.circular(10),
                    image:DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQK-v650qP6tlCan-_Qxa_zrZWOqWdrmzECEq8kS8yiU5whd86J6jbxjbEhzvfXHUY1pVA&usqp=CAU.jpeg")
                        ,fit:BoxFit.fill
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10,),
                  width: width*0.40,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.brown.withOpacity(0.4),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white60,
                      )
                    ],
                    borderRadius: BorderRadius.circular(10),
                    image:DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmyot5rbx28I63l9T46N2GRDIbkP3DpzKw6Vmv2Y2UUM9ixRNd4DuJIJRbH3LXyEyYkOA&usqp=CAU.jpeg")
                        ,fit:BoxFit.fill
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10,),
                  width: width*0.40,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.brown.withOpacity(0.4),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white60,
                      )
                    ],
                    borderRadius: BorderRadius.circular(10),
                    image:DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQncLNAtG1ZtsUsCDkYSNA_WmCSM0rPl159x3YPo7-nvAudPMzd7uUcvvZPI63Ht6T2p1I&usqp=CAU.jpeg")
                        ,fit:BoxFit.fill
                    ),
                  ),
                ),

              ],
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 15,left: 190,right: 15,bottom: 10),
              height: 28,

              child:  RaisedButton(
                shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(15)),
                child:  Center(
                  child: Text("View Best Hotels>>",style:GoogleFonts.lato(
                    textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,color: Colors.white
                      ,letterSpacing: 0.5,fontStyle: FontStyle.italic,
                    ),
                  ),),
                ),
                onPressed: (){

                },
                color: Colors.brown,
              )
          ),



        ],

      ),


      bottomNavigationBar: BottomNavigationBar(
        items:  [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: ("Home"),
            backgroundColor: Colors.brown,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: ("Search"),
            backgroundColor: Colors.brown,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.format_line_spacing_outlined),
            label: ("More"),
            backgroundColor: Colors.brown,
          ),

        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.brown,
        onTap: (index){
          Navigator.push(context,MaterialPageRoute(builder: (_)=>  More()));

        },
      ),

    );
  }
}