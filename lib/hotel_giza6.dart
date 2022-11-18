import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/cupertino.dart';

import 'for_booking.dart';



class Sahara_Pyramids_Inn extends StatelessWidget {
  const Sahara_Pyramids_Inn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height=size.height;
    var width=size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text("Sahara Pyramids Inn"),
      ),
      backgroundColor: Colors.white70,
      body: SafeArea(
        child: ListView(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10,top: 20,bottom: 10),
                child:
                Text("hotel info :",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ),

              Container(
                margin: EdgeInsets.only(left: 5,top: 15,right: 0),
                height: 120,
                child: ListView(
                  scrollDirection:Axis.horizontal
                  ,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 5,right: 4),
                      width:width/3 ,
                      height: height/5,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                              'https://p.bookcdn.com/data/Photos/Big/12418/1241831/1241831935/Sahara-Pyramids-Inn-photos-Exterior-Sahara-Pyramids-Inn.JPEG',

                            ),
                            fit: BoxFit.fill),),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 4),
                      width:width/3 ,
                      height: height/5,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJgNDFAp3hoYL30Ypwb8CnqbfQgZKN1BA7xg&usqp=CAU',

                            ),
                            fit: BoxFit.fill),),


                    ),
                    Container(
                      margin: EdgeInsets.only(left: 4,right: 5),
                      width:width/3 ,
                      height: height/5,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/02/e2/e9/lunch-from-our-roof.jpg?w=700&h=-1&s=1'
                            ),
                            fit: BoxFit.fill),),

                    ),

                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 8,top: 25,right: 8),
                child: Row(
                  children: [
                    Text("Rooms : 350",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    SizedBox(width: 73,),
                    Text("Travelers : 2300",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8,top: 12),
                child: Row(
                  children: [
                    Container(child: Text("The Price : 2300 ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),),
                    Icon(Icons.price_change_rounded),
                  ],
                ),
              ),
              SizedBox(height: 20,),

              Container( margin:EdgeInsets.only(left: 8),child: Text("Provide :",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),),

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Row(children: [Icon(Icons.wifi),Text("WIFI",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold))]),
                    SizedBox(width: 100,),
                    Row(children: [Icon(Icons.breakfast_dining),Text("Breakfast",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold))],),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15,),
                child: Row(children: [Icon(Icons.local_parking_outlined),Text("Parking",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold))],),
              ),

              SizedBox(height: 20,),
              Container( margin:EdgeInsets.only(left: 8),child: Text("Contact Us :",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.only(left: 60),
                child: Row(
                  children: [
                    IconButton(onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=> Locationgi6()));
                    }, icon: Icon(Icons.location_on)),
                    SizedBox(width: 10,),
                    IconButton(onPressed:(){
                      launch("https://www.facebook.com/saharapyramidsinn/");
                      //https://m.facebook.com/profile.php?id=139340932872218&__tn__=C-R
                    }, icon: Icon(Icons.facebook)),
                    SizedBox(width: 10,),
                    IconButton(onPressed:(){
                      launch("tel:01113946743");
                      //02 24619494
                    }, icon: Icon(Icons.contact_phone_outlined)),
                    SizedBox(width: 10,),
                    IconButton(onPressed:(){
                      launch("sms:0224619494");
                    }, icon: Icon(Icons.sms_rounded)),
                  ],),
              ),


              Container(
                margin: EdgeInsets.all(35),
                width: 120,
                height: 50,
                child: RaisedButton(onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (_)=> Booking_Page()));
                },
                  child: Text("For Booking",style: TextStyle(fontSize: 18),),
                ),
              ),
            ]
        ),
      ),
    );
  }
}

class Locationgi6 extends StatelessWidget {
  const Locationgi6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
          onMapCreated: (x){},
          initialCameraPosition: CameraPosition(
            target: LatLng(29.97453322790316, 31.14102623982008),
            zoom: 22.0,

          ),
          markers: {
            const Marker(
              markerId: MarkerId("1"),
              position: LatLng(29.97453322790316, 31.14102623982008),
              infoWindow: InfoWindow(
                title:"Sahra Pyramids Inn",

              ),
            ),
          }


      ),
    );
  }
}
