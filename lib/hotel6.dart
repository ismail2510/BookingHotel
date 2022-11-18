import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import 'for_booking.dart';
class Hotel6 extends StatelessWidget {
  final String? name;
  const Hotel6({Key? key, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(0.8),
        title: Text("Sonesta Hotel"),
      ),
      body: SafeArea(
        top: true,
        child: ListView(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10,top: 20,bottom: 10),
                child:
                Text("hotel info :",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ),

              Container(
                margin: EdgeInsets.only(left: 5,top: 15),
                height: 120,
                child: ListView(
                  scrollDirection:Axis.horizontal
                  ,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 5,right: 4),
                      width: 150,
                      child: Image.network("https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/29/ab/0f/sonesta-cairo-hotel.jpg?w=1000&h=-1&s=1"),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 4),
                      width: 165,
                      child: Image.network("https://dynamic-media-cdn.tripadvisor.com/media/photo-o/07/b5/07/c3/sonesta-hotel-tower-casino.jpg?w=1100&h=-1&s=1"),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 8,right: 5),
                      width: 170,
                      child: Image.network("https://dynamic-media-cdn.tripadvisor.com/media/photo-o/07/93/d6/fb/sonesta-hotel-tower-casino.jpg?w=1100&h=-1&s=1"),
                    ),

                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 8,top: 25,right: 8),
                child: Row(
                  children: [
                    Text("Rooms : 300",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    SizedBox(width: 73,),
                    Text("Travelers : 1900",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8,top: 12),
                child: Row(
                  children: [
                    Container(child: Text("The Price : 1900 ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),),
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
                      Navigator.push(context, MaterialPageRoute(builder: (_)=> Location6()));
                    }, icon: Icon(Icons.location_on)),
                    SizedBox(width: 10,),
                    IconButton(onPressed:(){
                      launch("https://ar-ar.facebook.com/SonestaCairo/");
                      //https://ar-ar.facebook.com/SonestaCairo/
                    }, icon: Icon(Icons.facebook)),
                    SizedBox(width: 10,),
                    IconButton(onPressed:(){
                      launch("tel:0222641111");
                      //02 22641111
                    }, icon: Icon(Icons.contact_phone_outlined)),
                    SizedBox(width: 10,),
                    IconButton(onPressed:(){
                      launch("sms:0222641111");
                    }, icon: Icon(Icons.sms_outlined)),
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
class Location6 extends StatelessWidget {
  const Location6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
          onMapCreated: (x){},
          initialCameraPosition: CameraPosition(
            target: LatLng(30.078978520332708, 31.317557220131185),
            zoom: 18.0,

          ),
          markers: {
            const Marker(
              markerId: MarkerId("1"),
              position: LatLng(30.078978520332708, 31.317557220131185),
              infoWindow: InfoWindow(
                title:"Sonesta Hotel",

              ),
            ),
          }


      ),
    );
  }
}